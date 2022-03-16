//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: AllOoneDataStructure.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/16: Created by szwathub on 2022/3/16
//

class AllOne {

    class Node {

        fileprivate var keys: Set<String>
        fileprivate var count: Int

        fileprivate var prev: Node?
        fileprivate var next: Node?

        init(count: Int) {
            self.keys  = []
            self.count = count
        }

        func clear() {
            if keys.isEmpty {
                self.prev?.next = self.next
                self.next?.prev = self.prev
            }
        }
    }

    private var head: Node
    private var tail: Node
    private var map: [String: Node]

    init() {
        head = Node(count: -100)
        tail = Node(count: -100)
        head.next = tail
        tail.prev = head
        map = [:]
    }

    func inc(_ key: String) {
        if let node = map[key] {
            node.keys.remove(key)
            let count = node.count
            var next: Node!
            if node.next?.count == count + 1 {
                next = node.next
            } else {
                next = Node(count: count + 1)
                next.prev = node
                next.next = node.next
                node.next?.prev = next
                node.next = next
            }
            next.keys.insert(key)
            map.updateValue(next, forKey: key)
            node.clear()
        } else {
            var node: Node!
            if head.next?.count == 1 {
                node = head.next
            } else {
                node = Node(count: 1)
                node.next = head.next
                node.prev = head
                head.next?.prev = node
                head.next = node
            }
            node.keys.insert(key)
            map.updateValue(node, forKey: key)
        }
    }

    func dec(_ key: String) {
        if let node = map[key] {
            node.keys.remove(key)
            let count = node.count
            if count == 1 {
                map.removeValue(forKey: key)
            } else {
                var prev: Node!
                if node.prev?.count == count - 1 {
                    prev = node.prev
                } else {
                    prev = Node(count: count - 1)
                    prev?.next = node
                    prev?.prev = node.prev
                    node.prev?.next = prev
                    node.prev = prev
                }
                prev?.keys.insert(key)
                map.updateValue(prev, forKey: key)
            }
            node.clear()
        }
    }

    func getMaxKey() -> String {
        return tail.prev?.keys.first ?? ""
    }

    func getMinKey() -> String {
        return head.next?.keys.first ?? ""
    }
}
