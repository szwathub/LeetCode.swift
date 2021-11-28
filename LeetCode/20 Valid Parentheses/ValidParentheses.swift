//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ValidParentheses.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/27: Created by szwathub on 2021/10/27
//

class ValidParentheses {
    func isValid(_ s: String) -> Bool {
        var stack = [Character]()
        let list = Array(s)

        for character in list {
            if (character == ")" && stack.last == "(")
                || (character == "}" && stack.last == "{")
                || (character == "]" && stack.last == "[") {

                stack.removeLast()
            } else {
                stack.append(character)
            }
        }

        return stack.isEmpty
    }
}
