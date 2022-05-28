//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RemoveOutermostParentheses.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/28: Created by szwathub on 2022/5/28
//

class RemoveOutermostParentheses {
    func removeOuterParentheses(_ s: String) -> String {

        var ans = ""
        var count = 0
        for char in s {
            if char == ")" {
                count -= 1
            }
            if count != 0 {
                ans.append(char)
            }
            if char == "(" {
                count += 1
            }
        }

        return ans
    }
}
