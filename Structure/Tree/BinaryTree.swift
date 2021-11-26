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

    init() {
        root = nil
    }

    convenience init(elements: [T?]) {
        self.init()

        var stack = [Node]()
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
}

extension BinaryTree: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

    public convenience init(arrayLiteral elements: T...) {
        self.init(elements: elements)
    }
}

extension BinaryTree.Node: Equatable where T: Equatable {
    public static func == (lhs: BinaryTree<T>.Node, rhs: BinaryTree<T>.Node) -> Bool {
        if lhs.value == rhs.value && lhs.left == rhs.left && lhs.right == rhs.right {
            return true
        }

        return false
    }
}
