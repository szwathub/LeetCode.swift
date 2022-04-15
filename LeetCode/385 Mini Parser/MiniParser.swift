//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MiniParser.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/15: Created by szwathub on 2022/4/15
//

// This is the interface that allows for creating nested lists.
// You should not implement it, or speculate about its implementation
class NestedInteger {

    init(_ interger: Int = 0) {

    }

    // Return true if this NestedInteger holds a single integer, rather than a nested list.
    // public func isInteger() -> Bool {
    //     return true
    // }

    // Return the single integer that this NestedInteger holds, if it holds a single integer
    // The result is undefined if this NestedInteger holds a nested list
    // public func getInteger() -> Int {
    //     return 0
    // }

    // Set this NestedInteger to hold a single integer.
    // public func setInteger(value: Int) {
    //
    // }

    // Set this NestedInteger to hold a nested list and adds a nested integer to it.
    public func add(_ elem: NestedInteger) {

    }

    // Return the nested list that this NestedInteger holds, if it holds a nested list
    // The result is undefined if this NestedInteger holds a single integer
    public func getList() -> [NestedInteger] {
        return []
    }
}

class MiniParser {
    func deserialize(_ s: String) -> NestedInteger? {
        if let number = Int(s) {
            return NestedInteger(number)
        }

        var stack = [NestedInteger()], digits = [Character]()
        for character in s {
            switch character {
            case "[":
                let new = NestedInteger()
                stack[stack.count - 1].add(new)
                stack.append(new)
            case "]", ",":
                if let number = Int(String(digits)) {
                    digits = []
                    stack.last?.add(NestedInteger(number))
                }
                if character == "]" {
                    stack.removeLast()
                }
            default:
                digits.append(character)
            }
        }

        return stack.first?.getList().first
    }
}
