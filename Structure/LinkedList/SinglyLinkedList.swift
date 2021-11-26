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
        public var value: T

        public var next: Node?

        public init(value: T, next: Node? = nil) {
            self.value = value
            self.next = next
        }
    }

    var head: Node?
    var tail: Node?

    /// A Boolean value indicating whether the link list is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return head == nil
    }

    /// Creates a new, empty link list.
    ///
    /// This is equivalent to initializing with an empty array literal.
    /// For example:
    ///
    ///     var emptyLink = SinglyLinkedList<Int>()
    ///     print(emptyLink.isEmpty)
    ///     // Prints "true"
    ///
    ///     emptyLink = []
    ///     print(emptyLink.isEmpty)
    ///     // Prints "true"
    public init() {
        head = nil
        tail = nil
    }

    /// Creates an link list containing the elements of a sequence.
    ///
    /// You can use this initializer to create an link list from any other type that
    /// conforms to the `Sequence` protocol. For example, you might want to
    /// create an link list with the integers from 1 through 7. Use this initializer
    /// around a range instead of typing all those numbers in an array literal.
    ///
    ///     let link = SinglyLinkedList(1...7)
    ///
    /// You can also use this initializer to convert a complex sequence or
    /// collection type back to a link list. For example, the `keys` property of
    /// a dictionary isn't an array with its own storage, it's a collection
    /// that maps its elements from the dictionary only when they're
    /// accessed, saving the time and space needed to allocate a link list.
    ///
    ///     let names: [String: Int] = [
    ///         "Vermillion": 18, "Magenta": 302,
    ///         "Gold": 50, "Cerise": 320
    ///     ]
    ///     let link = SinglyLinkedList(names.keys)
    ///     print(link)
    ///     // Prints "(Vermillion) --> (Magenta) --> (Gold) --> (Cerise)"
    ///
    /// - Parameter sequence: The sequence of elements to turn into an link list.
    public convenience init<S>(_ sequence: S) where T == S.Element, S: Sequence {
        self.init()

        var headSet = false
        var current: Node?

        for element in sequence {
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
}

extension SinglyLinkedList: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

    /// Creates link list from the given array literal.
    ///
    /// Do not call this initializer directly. It is used by the compiler
    /// when you use an array literal. Instead, create a new link list by using an
    /// array literal as its value. To do this, enclose a comma-separated list of
    /// values in square brackets.
    ///
    /// Here, an array of strings is created from an array literal holding
    /// only strings.
    ///
    ///     let link: SinglyLinkedList = ["cocoa beans", "sugar", "cocoa butter", "salt"]
    ///
    /// - Parameter elements: A variadic list of elements of the new link list.
    public convenience init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension SinglyLinkedList: CustomStringConvertible {

    /// A textual representation of the link list and its elements.
    public var description: String {
        guard let head = head else {
            return ""
        }

        return head.description
    }
}

extension SinglyLinkedList.Node: Equatable where T: Equatable {

    /// Returns a Boolean value indicating whether two link list contain the same
    /// elements in the same order.
    ///
    /// You can use the equal-to operator (`==`) to compare any two link list
    /// that store the same, `Equatable`-conforming element type.
    ///
    /// - Parameters:
    ///   - lhs: a link list to compare.
    ///   - rhs: Another link list to compare.
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

extension SinglyLinkedList.Node where T: Equatable {

    /// Returns the first node where the specified value appears in the link list
    ///
    /// - Parameter element: An element to search for in the link list.
    /// - Returns: The first node where `element` is found. If `element` is not
    ///   found in the collection, returns `nil`.
    ///
    /// - Complexity: O(*n*), where *n* is the length of the link list.
    ///
    public func firstNode(of element: T) -> SinglyLinkedList.Node? {
        var find: SinglyLinkedList.Node? = self
        while find != nil {
            if find?.value == element {
                return find
            }
            find = find?.next
        }

        return nil
    }
}

extension SinglyLinkedList.Node: CustomStringConvertible {

    /// A textual representation of the link list and its elements.
    public var description: String {
        var string = ""
        var node: SinglyLinkedList.Node? = self
        while let currrent = node {
            string += "(\(currrent.value))"
            node = currrent.next
            if node != nil {
                string += " --> "
            }
        }

        return string
    }
}
