//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LRUCache.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

class LRUCache {

    class Node {
        var key: Int

        var value: Int

        var next: Node?

        var prev: Node?

        init(_ key: Int, _ value: Int) {
            self.key = key
            self.value = value
        }
    }

    private var capacity: Int
    private var cache: [Int: Node]

    private var head: Node?
    private var tail: Node?

    init(_ capacity: Int) {
        self.capacity = capacity
        self.cache = [:]

        self.head = Node(0, -1)
        self.tail = Node(0, -1)
        self.head?.next = tail
        self.tail?.prev = head
    }

    func get(_ key: Int) -> Int {
        if let node = cache[key] {
            moveToHead(node)
            return node.value
        }

        return -1
    }

    func put(_ key: Int, _ value: Int) {
        if let node = cache[key] {
            node.value = value
            moveToHead(node)
            return
        }

        let new = Node(key, value)
        cache[key] = new
        addToHead(new)

        if cache.count > capacity, let node = tail?.prev {
            cache.removeValue(forKey: node.key)
            remove(node)
        }
    }

    private func moveToHead(_ node: Node) {
        remove(node)
        addToHead(node)
    }

    private func remove(_ node: Node) {
        node.prev?.next = node.next
        node.next?.prev = node.prev
    }

    private func addToHead(_ node: Node) {
        node.prev = head
        node.next = head?.next
        head?.next?.prev = node
        head?.next = node
    }
}
