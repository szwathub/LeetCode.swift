//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Trie.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/17: Created by szwathub on 2022/3/17
//

final public class Trie {

    public class Node {

        public var children = [Character: Node]()

        public var isEnd = false

        public var indices = [Int]()
    }

    public var root: Node

    public init() {
        root = Node()
    }

    public func insert<S>(
        _ sequence: S,
        forEach body: ((Node) -> Void)? = nil) where Character == S.Element, S: Sequence {

        var node = root
        for key in sequence {
            if node.children[key] == nil {
                node.children[key] = Node()
            }

            node = node.children[key]!
            body?(node)
        }

        node.isEnd = true
    }

    public func search<S>(_ sequence: S) -> Trie.Node? where Character == S.Element, S: Sequence {
        var node = root
        for key in sequence {
            guard let next = node.children[key] else {
                return nil
            }

            node = next
        }

        return node
    }
}
