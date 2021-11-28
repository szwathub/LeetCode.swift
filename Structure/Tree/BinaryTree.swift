//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/18: Created by szwathub on 2021/11/18
//

import Foundation

final public class BinaryTree<T> {
    public class Node {
        public var value: T

        public var left: Node?

        public var right: Node?

        public init(value: T, left: Node? = nil, right: Node? = nil) {
            self.value = value
            self.left = left
            self.right = right
        }
    }

    var root: Node?

    /// A Boolean value indicating whether the binary tree is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return root == nil
    }

    /// Creates a new, empty binary tree.
    ///
    /// This is equivalent to initializing with an empty array literal.
    /// For example:
    ///
    ///     var emptyTree = BinaryTree<Int>()
    ///     print(emptyTree.isEmpty)
    ///     // Prints "true"
    ///
    ///     emptyTree = []
    ///     print(emptyTree.isEmpty)
    ///     // Prints "true"
    init() {
        root = nil
    }

    /// Creates an binary tree containing the elements of a sequence by level order.
    ///
    /// You can use this initializer to create an binary tree from any other type that
    /// conforms to the `Sequence` protocol. For example, you might want to
    /// create an binary tree with the integers from 1 through 7. Use this initializer
    /// around a range instead of typing all those numbers in an array literal.
    ///
    ///     let tree = BinaryTree(1...7)
    ///
    /// You can also use this initializer to convert a complex sequence or
    /// collection type back to a binary tree. For example, the `keys` property of
    /// a dictionary isn't an array with its own storage, it's a collection
    /// that maps its elements from the dictionary only when they're
    /// accessed, saving the time and space needed to allocate a binary tree.
    ///
    ///     let names: [String: Int] = [
    ///         "Vermillion": 18, "Magenta": 302,
    ///         "Gold": 50
    ///     ]
    ///     let tree = BinaryTree(names.keys)
    ///     print(tree)
    ///     // Prints "{value: Magenta, left = {value: Vermillion}, right = {value: Gold}}"
    ///
    /// - Parameter sequence: The sequence of elements to turn into an binary tree.
    public convenience init<S>(_ sequence: S) where T? == S.Element, S: Sequence {
        self.init()

        var stack = [Node]()
        let elements = Array(sequence)
        guard let first = elements.first, let value = first else {
            return
        }

        root = Node(value: value)
        stack.append(root!)

        for index in stride(from: 1, to: elements.count, by: 2) {
            let current = stack.removeFirst()

            if index < elements.count, let value = elements[index] {
                let left = Node(value: value)
                current.left = left
                stack.append(left)
            }
            if index + 1 < elements.count, let value = elements[index + 1] {
                let right = Node(value: value)
                current.right = right
                stack.append(right)
            }
        }
    }

    public convenience init<S>(_ sequence: S) where T == S.Element, S: Sequence {
        self.init()

        var stack = [Node]()
        let elements = Array(sequence)
        guard let first = elements.first else {
            return
        }

        root = Node(value: first)
        stack.append(root!)

        for index in stride(from: 1, to: elements.count, by: 2) {
            let current = stack.removeFirst()

            if index < elements.count {
                let left = Node(value: elements[index])
                current.left = left
                stack.append(left)
            }
            if index + 1 < elements.count {
                let right = Node(value: elements[index + 1])
                current.right = right
                stack.append(right)
            }
        }
    }
}

extension BinaryTree: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

    /// Creates binary tree from the given array literal by level order.
    ///
    /// Do not call this initializer directly. It is used by the compiler
    /// when you use an array literal. Instead, create a new binary tree by using an
    /// array literal as its value. To do this, enclose a comma-separated list of
    /// values in square brackets.
    ///
    /// Here, an array of strings is created from an array literal holding
    /// only strings.
    ///
    ///     let tree: BinaryTree = ["cocoa beans", "sugar", "cocoa butter", "salt"]
    ///
    /// - Parameter elements: A variadic list of elements of the new binary tree.
    public convenience init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension BinaryTree: CustomStringConvertible {

    /// A textual representation of the binary tree and its elements.
    public var description: String {
        guard let root = root else {
            return ""
        }

        return root.description
    }
}

extension BinaryTree.Node: Equatable where T: Equatable {

    /// Returns a Boolean value indicating whether two binary tree node contain the same
    /// elements in the same order.
    ///
    /// You can use the equal-to operator (`==`) to compare any two binary tree node
    /// that store the same, `Equatable`-conforming element type.
    ///
    /// - Parameters:
    ///   - lhs: a binary tree node to compare.
    ///   - rhs: Another binary tree node to compare.
    public static func == (lhs: BinaryTree<T>.Node, rhs: BinaryTree<T>.Node) -> Bool {
        if lhs.value == rhs.value && lhs.left == rhs.left && lhs.right == rhs.right {
            return true
        }

        return false
    }
}

extension BinaryTree.Node: CustomStringConvertible {

    /// A textual representation of the binary tree and its elements.
    public var description: String {
        var string = "{value: \(value)"

        if let left = self.left {
            string += ", left = \(left.description)"
        }
        if let right = self.right {
            string += ", right = \(right.description)"
        }
        string += "}"

        return string
    }
}
