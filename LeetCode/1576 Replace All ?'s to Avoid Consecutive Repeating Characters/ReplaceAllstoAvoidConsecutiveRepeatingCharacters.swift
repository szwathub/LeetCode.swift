//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReplaceAllstoAvoidConsecutiveRepeatingCharacters.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/5: Created by szwathub on 2022/1/5
//

class ReplaceAllstoAvoidConsecutiveRepeatingCharacters {
    func modifyString(_ s: String) -> String {
        var ans = [Character]()
        let list = Array(s)

        for (index, character) in list.enumerated() {
            if character != "?" {
                ans.append(character)
            } else {
                for replace in "abcdefghijklmnopqrstuvwxyz" {
                    if (index > 0 && list[index - 1] == replace)
                        || (index < s.count - 1 && list[index + 1] == replace) {

                        continue
                    }

                    ans.append(replace)
                    break
                }
            }
        }

        return String(ans)
    }
}
