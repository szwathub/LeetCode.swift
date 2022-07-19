//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SubstringwithConcatenationofAllWords.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/337
//  History:
//      2022/7/19: Created by szwathub on 2022/7/19
//

class SubstringwithConcatenationofAllWords {
    func findSubstring(_ s: String, _ words: [String]) -> [Int] {
        return helper(Array(s), words)
    }

    func helper(_ s: [Character], _ words: [String]) -> [Int] {
        func check(_ map: inout [String: Int], _ key: String) {
            if let value = map[key], value == 0 {
                map.removeValue(forKey: key)
            }
        }

        var ans = [Int]()
        let m = words.count, n = words[0].count, ls = s.count

        for i in 0..<n {
            if i + m * n > ls {
                break
            }

            var differ = [String: Int]()
            for j in 0..<m {
                let word = String(s[(i + j * n)..<(i + (j + 1) * n)])
                differ[word, default: 0] += 1
            }
            for word in words {
                differ[word, default: 0] -= 1
                check(&differ, word)
            }

            for start in stride(from: i, to: ls - m * n + 1, by: n) {
                if start != i {
                    var word = String(s[start + (m - 1) * n..<start + m * n])
                    differ[word, default: 0] += 1
                    check(&differ, word)

                    word = String(s[start - n..<start])
                    differ[word, default: 0] -= 1
                    check(&differ, word)
                }

                if differ.isEmpty {
                    ans.append(start)
                }
            }
        }

        return ans
    }
}
