//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: Tree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/21: Created by szwathub on 2021/11/21
//

final public class Tree<T> {
    public class Node {
        public var value: T

        public weak var parent: Node?

        public var children = [Node]()

        public init(value: T) {
            self.value = value
        }
    }

    var root: Node?

    /// A Boolean value indicating whether the tree is empty.
    ///
    /// - Complexity: O(1)
    public var isEmpty: Bool {
        return root == nil
    }

    /// Creates a new, empty tree.
    ///
    /// This is equivalent to initializing with an empty array literal.
    /// For example:
    ///
    ///     var emptyTree = Tree<Int>()
    ///     print(emptyTree.isEmpty)
    ///     // Prints "true"
    ///
    ///     emptyTree = []
    ///     print(emptyTree.isEmpty)
    ///     // Prints "true"
    init() {
        root = nil
    }

    /// Creates a tree containing the elements of a sequence by level order.
    ///
    /// You can use this initializer to create a tree from any other type that
    /// conforms to the `Sequence` protocol. For example, you might want to
    /// create a tree with the integers from 1 through 7. Use this initializer
    /// around a range instead of typing all those numbers in an array literal.
    ///
    ///     let tree = Tree(1...7)
    ///
    /// You can also use this initializer to convert a complex sequence or
    /// collection type back to a tree. For example, the `keys` property of
    /// a dictionary isn't an array with its own storage, it's a collection
    /// that maps its elements from the dictionary only when they're
    /// accessed, saving the time and space needed to allocate a tree.
    ///
    ///     let names: [String: Int] = [
    ///         "Vermillion": 18, "Magenta": 302,
    ///         "Gold": 50
    ///     ]
    ///     let tree = Tree(names.keys)
    ///     print(tree)
    ///     // Prints "{value: Vermillion, children: {value: Magenta}, {value: Gold}}"
    ///
    /// - Parameter sequence: The sequence of elements to turn into a tree.
    public convenience init<S>(_ sequence: S) where T? == S.Element, S: Sequence {
        self.init()

        var stack = [Node]()
        let elements = Array(sequence).split(omittingEmptySubsequences: false) { $0 == nil }
        for list in elements {
            if root == nil {
                guard let first = list.first, let value = first else {
                    return
                }

                root = Node(value: value)
                stack.append(root!)
            } else {
                let current = stack.removeFirst()
                for element in list {
                    if let element = element {
                        let node = Node(value: element)
                        node.parent = current
                        current.children.append(node)
                        stack.append(node)
                    }
                }
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

        for index in 1..<elements.count {
            let node = Node(value: elements[index])
            root?.children.append(node)
        }
    }
}

extension Tree: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

        /// Creates tree from the given array literal by level order.
        ///
        /// Do not call this initializer directly. It is used by the compiler
        /// when you use an array literal. Instead, create a new binary tree by using an
        /// array literal as its value. To do this, enclose a comma-separated list of
        /// values in square brackets.
        ///
        /// Here, an array of strings is created from an array literal holding
        /// only strings.
        ///
        ///     let tree: Tree = ["cocoa beans", "sugar", "cocoa butter", "salt"]
        ///
        /// - Parameter elements: A variadic list of elements of the new tree.
    public convenience init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}

extension Tree: CustomStringConvertible {

    /// A textual representation of the tree and its elements.
    public var description: String {
        guard let root = root else {
            return ""
        }

        return root.description
    }
}

extension Tree.Node: CustomStringConvertible {

    /// A textual representation of the tree node and its elements.
    public var description: String {
        var string = "{value: \(value)"

        if !self.children.isEmpty {
            string += ", children: "
        }

        for (index, child) in self.children.enumerated() {
            if index == 0 {
                string += "\(child.description)"
            } else {
                string += ", \(child.description)"
            }
        }
        string += "}"

        return string
    }
}
