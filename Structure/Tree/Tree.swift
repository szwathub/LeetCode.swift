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

    public typealias Node = Tree

    public var value: T

    public weak var parent: Node?

    public var children = [Node]()

    public init(value: T) {
        self.value = value
    }

    public func addChild(_ node: Node) {
        children.append(node)
        node.parent = self
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
    public convenience init?<S>(_ sequence: S) where T? == S.Element, S: Sequence {
        let elements = Array(sequence).split(omittingEmptySubsequences: false) { $0 == nil }
        guard let first = elements.first?.first, let value = first else {
            return nil
        }

        self.init(value: value)

        var stack: [Node] = [self]
        for (index, list) in elements.enumerated() where index > 0 {
            let current = stack.removeFirst()
            for element in list {
                if let element = element {
                    let node = Node(value: element)
                    current.addChild(node)
                    stack.append(node)
                }
            }
        }
    }

    public convenience init?<S>(_ sequence: S) where T == S.Element, S: Sequence {
        let elements = Array(sequence)
        guard let first = elements.first else {
            return nil
        }
        self.init(value: first)

        for (index, element) in elements.enumerated() where index > 0 {
            addChild(Node(value: element))
        }
    }
}

// MARK: - CustomStringConvertible
extension Tree: CustomStringConvertible {

    /// A textual representation of the tree node and its elements.
    public var description: String {
        var string = "{value: \(value)"

        if !children.isEmpty {
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
