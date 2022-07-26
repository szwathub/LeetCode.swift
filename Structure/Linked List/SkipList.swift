//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SkipList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/7/26: Created by szwathub on 2022/7/26
//

final public class SkipList<Element> where Element: Comparable {

    private class Node {

        public var value: Element

        public var next: [Node?]

        init(_ value: Element, _ level: Int) {
            self.value = value
            self.next = [Node?](repeating: nil, count: level)
        }
    }

    private var head: Node

    private var level: Int

    private var skip: Float

    public init(_ head: Element, _ level: Int = 32, _ skip: Float = 0.5) {
        self.level = level
        self.skip = skip
        self.head = Node(head, level)
    }

    public func search(_ target: Element) -> Bool {
        var find = [Node?](repeating: nil, count: level)
        self.find(target, &find)

        guard let node = find[0]?.next[0], node.value == target else {
            return false
        }

        return true
    }

    public func add(_ element: Element) {
        var find = [Node?](repeating: nil, count: level)
        self.find(element, &find)

        let node = Node(element, level)
        for index in 0..<level {
            node.next[index] = find[index]?.next[index]
            find[index]?.next[index] = node

            if Int.random(in: 0..<2) == 1 {
                break
            }
        }
    }

    public func erase(_ element: Element) -> Bool {
        var find = [Node?](repeating: nil, count: level)
        self.find(element, &find)

        guard let node = find[0]?.next[0], node.value == element else {
            return false
        }

        for index in 0..<level where find[index]?.next[index] === node {
            find[index]?.next[index] = node.next[index]
        }

        return true
    }

    /// Find the largest node of each level that is less than the target value.
    ///
    /// - Parameters:
    ///   - target: The target value
    ///   - find: The largest node of each level that is less than the target value.
    private func find(_ target: Element, _ find: inout [Node?]) {
        var p = head
        for index in stride(from: level - 1, through: 0, by: -1) {
            while let next = p.next[index], next.value < target {
                p = next
            }

            find[index] = p
        }
    }
}
