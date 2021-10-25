//
//  File name: MinStack.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/25: Created by szwathub on 2021/10/25
//

import Foundation

class MinStack {
    var stack = [Int]()
    var minstack = [Int]()

    init() {

    }

    func push(_ val: Int) {
        if let prev = minstack.last {
            stack.append(val)
            minstack.append(min(prev, val))
        } else {
            stack.append(val)
            minstack.append(val)
        }
    }

    func pop() {
        stack.removeLast()
        minstack.removeLast()
    }

    func top() -> Int {
        return stack[stack.count - 1]
    }

    func getMin() -> Int {
        return minstack[minstack.count - 1]
    }
}
