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

final public class SinglyLinkedListNode<T> {
    public var value: T?
    public var next: SinglyLinkedListNode?

    public init() {
        self.value = nil
        self.next = nil
    }

    public init(_ val: T) {
        self.value = val
        self.next = nil
    }

    public init(_ val: T?, _ next: SinglyLinkedListNode?) {
        self.value = val
        self.next = next
    }
}

// MARK: - Equatable
extension SinglyLinkedListNode: Equatable where T: Equatable {
    public static func == (lhs: SinglyLinkedListNode<T>, rhs: SinglyLinkedListNode<T>) -> Bool {
        var lhead: SinglyLinkedListNode? = lhs
        var rhead: SinglyLinkedListNode? = rhs

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

final public class SinglyLinkedList<T> {
    typealias Node = SinglyLinkedListNode

    var head: Node<T>?
    var tail: Node<T>?

    init() {
        head = nil
        tail = nil
    }

    convenience init(_ elements: [T]) {
        self.init()

        var headSet = false
        var current: Node<T>?

        for element in elements {
            if headSet == false {
                head = Node(element)
                current = head
                headSet = true
            } else {
                current?.next = Node(element)
                current = current?.next
            }
        }
        tail = current
    }

    subscript(element: T) -> Node<T>? where T: Equatable {
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

// MARK: - ExpressibleByArrayLiteral
extension SinglyLinkedList: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

    public convenience init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

// MARK: - Equatable
extension SinglyLinkedList: Equatable where T: Equatable {
    public static func == (lhs: SinglyLinkedList<T>, rhs: SinglyLinkedList<T>) -> Bool {
        return lhs.head == rhs.head
    }
}
