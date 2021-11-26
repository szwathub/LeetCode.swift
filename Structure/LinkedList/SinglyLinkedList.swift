//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ListNode.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/20: Created by szwathub on 2021/10/20
//

import Foundation

final public class SinglyLinkedList<T> {
    public class Node {
        public var value: T?

        public var next: Node?

        public init(value: T? = nil, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }

    var head: Node?
    var tail: Node?

    init() {
        head = nil
        tail = nil
    }

    convenience init(elements: [T]) {
        self.init()

        var headSet = false
        var current: Node?

        for element in elements {
            if headSet == false {
                head = Node(value: element)
                current = head
                headSet = true
            } else {
                current?.next = Node(value: element)
                current = current?.next
            }
        }
        tail = current
    }

    subscript(element: T) -> Node? where T: Equatable {
        var find = head
        while find != nil {
            if find?.value == element {
                return find
            }
            find = find?.next
        }

        return nil
    }
}

extension SinglyLinkedList: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

    public convenience init(arrayLiteral elements: T...) {
        self.init(elements: elements)
    }
}

extension SinglyLinkedList: Equatable where T: Equatable {
    public static func == (lhs: SinglyLinkedList<T>, rhs: SinglyLinkedList<T>) -> Bool {
        return lhs.head == rhs.head
    }
}

extension SinglyLinkedList.Node: Equatable where T: Equatable {
    public static func == (lhs: SinglyLinkedList<T>.Node, rhs: SinglyLinkedList<T>.Node) -> Bool {
        var lhead: SinglyLinkedList<T>.Node? = lhs
        var rhead: SinglyLinkedList<T>.Node? = rhs

        while lhead != nil || rhead != nil {
            if lhead == nil || rhead == nil || lhead?.value != rhead?.value {
                return false
            }

            lhead = lhead?.next
            rhead = rhead?.next
        }

        return true
    }
}
