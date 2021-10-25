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

/// Definition for singly-linked list.
final public class LinkedListNode<Element> {
    public var val: Element?
    public var next: LinkedListNode?

    public init() {
        self.val = nil
        self.next = nil
    }

    public init(_ val: Element) {
        self.val = val
        self.next = nil
    }

    public init(_ val: Element?, _ next: LinkedListNode?) {
        self.val = val
        self.next = next
    }
}


// MARK: -  Equatable
extension LinkedListNode: Equatable where Element: Equatable {
    public static func == (lhs: LinkedListNode<Element>, rhs: LinkedListNode<Element>) -> Bool {
        guard lhs.val == rhs.val else {
            return false
        }

        return lhs.next == rhs.next
    }
}


final public class LinkedList<Element> {
    var head: LinkedListNode<Element>?
    var tail: LinkedListNode<Element>?

    init() {
        head = nil
        tail = nil
    }

    convenience init(_ elements: [Element]) {
        self.init()

        var headSet = false
        var current: LinkedListNode<Element>?

        for element in elements {
            if headSet == false {
                head = LinkedListNode(element)
                current = head
                headSet = true
            } else {
                current?.next = LinkedListNode(element)
                current = current?.next
            }
        }
        tail = current
    }
}

// MARK: - ExpressibleByArrayLiteral
extension LinkedList: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = Element

    public convenience init(arrayLiteral elements: Element...) {
        self.init(elements)
    }
}
