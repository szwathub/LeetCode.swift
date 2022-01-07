//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ImplementQueueusingStacks.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/8: Created by szwathub on 2022/1/8
//

import Structure

class ImplementQueueusingStacks {

    private var s1 = Stack<Int>()
    private var s2 = Stack<Int>()

    var front = 0

    init() {

    }

    func push(_ x: Int) {
        if s1.isEmpty {
            front = x
        }
        s1.push(x)
    }

    func pop() -> Int {
        if s2.isEmpty {
            while let value = s1.pop() {
                s2.push(value)
            }
        }

        return s2.pop()!
    }

    func peek() -> Int {
        if !s2.isEmpty {
            return s2.peek()!
        }

        return front
    }

    func empty() -> Bool {
        return s1.isEmpty && s2.isEmpty
    }
}
