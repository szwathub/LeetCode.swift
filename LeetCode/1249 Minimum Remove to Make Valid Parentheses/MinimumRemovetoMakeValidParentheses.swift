//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumRemovetoMakeValidParentheses.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/16: Created by szwathub on 2022/3/16
//

class MinimumRemovetoMakeValidParentheses {
    func minRemoveToMakeValid(_ s: String) -> String {
        var stack  = [Int]()
        var remove = Set<Int>()

        for (index, character) in s.enumerated() {
            if character == "(" {
                stack.append(index)
            } else if character == ")" {
                if stack.isEmpty {
                    remove.insert(index)
                } else {
                    stack.removeLast()
                }
            }
        }

        while !stack.isEmpty {
            remove.insert(stack.removeLast())
        }

        var answer = [Character]()
        for (index, character) in s.enumerated() {
            if !remove.contains(index) {
                answer.append(character)
            }
        }

        return String(answer)
    }
}
