//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DesignLinkedList.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/16: Created by szwathub on 2022/3/16
//

class MyLinkedList {

    public class Node {

        public var val: Int

        public var next: Node?

        public init(val: Int, next: Node? = nil) {
            self.val = val
            self.next = next
        }
    }

    var head: Node?
    var tail: Node?

    var count: Int

    public var isEmpty: Bool {
        return count == 0
    }

    init() {
        head = nil
        tail = nil
        count = 0
    }

    func get(_ index: Int) -> Int {
        guard let node = get(at: index) else {
            return -1
        }

        return node.val
    }

    func addAtHead(_ val: Int) {
        let node = Node(val: val)

        if isEmpty {
            head = node
            tail = node
        } else {
            node.next = head
            head = node
        }

        count += 1
    }

    func addAtTail(_ val: Int) {
        let node = Node(val: val)

        if isEmpty {
            head = node
            tail = node
        } else {
            tail?.next = node
            tail = node
        }

        count += 1
    }

    func addAtIndex(_ index: Int, _ val: Int) {
        if index <= 0 {
            addAtHead(val)
        } else if index == count {
            addAtTail(val)
        } else if let prev = get(at: index - 1) {
            let node = Node(val: val)
            node.next = prev.next
            prev.next = node
            count += 1
        }
    }

    func deleteAtIndex(_ index: Int) {
        guard index < count && index >= 0 else {
            return
        }

        if index == 0 {
            head = head?.next
        } else if let prev = get(at: index - 1) {
            prev.next = prev.next?.next
            if index == count - 1 {
                tail = prev
            }
        }
        count -= 1
    }

    func get(at index: Int) -> Node? {
        guard index < count && index >= 0 else {
            return nil
        }

        var node = head
        var k = index
        while k > 0 {
            node = node?.next
            k -= 1
        }

        return node
    }
}
