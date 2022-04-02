//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: StrongPasswordChecker.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/2: Created by szwathub on 2022/4/2
//

class StrongPasswordChecker {
    func strongPasswordChecker(_ password: String) -> Int {
        var categories = 0
        var lower = false, upper = false, digit = false
        for character in password {
            if character.isLowercase && !lower {
                lower = true
                categories += 1
            } else if character.isUppercase && !upper {
                upper = true
                categories += 1
            } else if character.isNumber && !digit {
                digit = true
                categories += 1
            }
        }

        if password.count < 6 {
            return max(6 - password.count, 3 - categories)
        } else if password.count <= 20 {
            return middle(password, categories)
        }

        return long(password, categories)
    }

    private func middle(_ password: String, _ categories: Int) -> Int {
        var replace = 0
        var count = 0
        var current: Character = "#"

        for character in password {
            if character == current {
                count += 1
            } else {
                replace += count / 3
                count = 1
                current = character
            }
        }

        replace += count / 3
        return max(replace, 3 - categories)
    }

    private func long(_ password: String, _ categories: Int) -> Int {
        let length = password.count
        var replace = 0, remove = length - 20
                    // k mod 3 = 1 的组数，即删除 2 个字符可以减少 1 次替换操作
        var rm2 = 0
        var count = 0
        var current: Character = "#"

        for character in password {
            if character == current {
                count += 1
            } else {
                if remove > 0 && count >= 3 {
                    if count % 3 == 0 {
                        // 如果是 k % 3 = 0 的组，那么优先删除 1 个字符，减少 1 次替换操作
                        remove -= 1
                        replace -= 1
                    } else if count % 3 == 1 {
                        // 如果是 k % 3 = 1 的组，那么存下来备用
                        rm2 += 1
                    }
                    // k % 3 = 2 的组无需显式考虑
                }
                replace += count / 3
                count = 1
                current = character
            }
        }

        if remove > 0 && count >= 3 {
            if count % 3 == 0 {
                remove -= 1
                replace -= 1
            } else if count % 3 == 1 {
                rm2 += 1
            }
        }
        replace += count / 3

        // 使用 k % 3 = 1 的组的数量，由剩余的替换次数、组数和剩余的删除次数共同决定
        let use2 = min(replace, min(rm2, remove / 2))
        replace -= use2
        remove -= use2 * 2
        // 由于每有一次替换次数就一定有 3 个连续相同的字符（k / 3 决定），因此这里可以直接计算出使用 k % 3 = 2 的组的数量
        let use3 = min(replace, remove / 3)
        replace -= use3
        remove -= use3 * 3
        return (length - 20) + max(replace, 3 - categories)
    }
}
