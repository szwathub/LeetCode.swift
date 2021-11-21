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
        public var value: T?

        public var left: Node?

        public var right: Node?

        public init(value: T? = nil, left: Node? = nil, right: Node? = nil) {
            self.value = value
            self.left = left
            self.right = right
        }
    }

    var root: Node?

    init() {
        root = nil
    }

    convenience init(_ elements: [T?]) {
        self.init()

        var stack = [Node]()
        guard let value = elements.first else {
            return
        }

        root = Node(value: value)
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

// MARK: - ExpressibleByArrayLiteral
extension BinaryTree: ExpressibleByArrayLiteral {
    public typealias ArrayLiteralElement = T

    public convenience init(arrayLiteral elements: T...) {
        self.init(elements)
    }
}
