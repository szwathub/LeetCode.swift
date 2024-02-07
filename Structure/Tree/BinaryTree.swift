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

final public class BinaryTree<T> {

    public typealias Node = BinaryTree

    public var value: T

    public var left: Node?

    public var right: Node?

    public init(value: T, left: Node? = nil, right: Node? = nil) {
        self.value = value
        self.left = left
        self.right = right
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
    public convenience init?<S>(_ sequence: S) where T? == S.Element, S: Sequence {
        let elements = Array(sequence)
        guard let first = elements.first, let value = first else {
            return nil
        }
        self.init(value: value)

        var stack: [Node] = [self]
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

    public convenience init?<S>(_ sequence: S) where T == S.Element, S: Sequence {
        let elements = Array(sequence)
        guard let first = elements.first else {
            return nil
        }
        self.init(value: first)

        var stack: [Node] = [self]
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

    public func preorderTraversal(_ body: (Node) -> Void) {
        var stack = [Node]()
        var node: Node? = self

        while !stack.isEmpty || node != nil {
            while let current = node {
                body(current)
                stack.append(current)
                node = current.left
            }

            node = stack.popLast()
            node = node?.right
        }
    }

    public func inorderTraversal(_ body: (Node) -> Void) {
        var stack = [Node]()
        var node: Node? = self

        while !stack.isEmpty || node != nil {
            while let current = node {
                stack.append(current)
                node = current.left
            }

            let top = stack.removeLast()
            body(top)
            node = top.right
        }
    }

    public func postorderTraversal(_ body: (Node) -> Void) {
        var stack = [Node]()
        var node: Node? = self
        var prev: Node?

        while !stack.isEmpty || node != nil {
            while let current = node {
                stack.append(current)
                node = current.left
            }

            let top = stack.removeLast()
            if top.right == nil || top.right === prev {
                body(top)
                prev = top
                node = nil
            } else {
                stack.append(top)
                node = top.right
            }
        }
    }

    public func levelOrderTraversal(_ body: (Int, Node) -> Void) {
        var quene = [Node]()
        quene.append(self)
        var level = 0

        while !quene.isEmpty {
            var list = [Node]()
            for node in quene {
                body(level, node)

                if let left = node.left {
                    list.append(left)
                }
                if let right = node.right {
                    list.append(right)
                }
            }

            level += 1
            quene = list
        }
    }
}

// MARK: - Equatable
extension BinaryTree: Equatable where T: Equatable {

    /// Returns a Boolean value indicating whether two binary tree node contain the same
    /// elements in the same order.
    ///
    /// You can use the equal-to operator (`==`) to compare any two binary tree node
    /// that store the same, `Equatable`-conforming element type.
    ///
    /// - Parameters:
    ///   - lhs: a binary tree node to compare.
    ///   - rhs: Another binary tree node to compare.
    public static func == (lhs: BinaryTree<T>, rhs: BinaryTree<T>) -> Bool {
        if lhs.value == rhs.value && lhs.left == rhs.left && lhs.right == rhs.right {
            return true
        }

        return false
    }
}

// MARK: - CustomStringConvertible
extension BinaryTree: CustomStringConvertible {

    /// A textual representation of the binary tree node and its elements.
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
