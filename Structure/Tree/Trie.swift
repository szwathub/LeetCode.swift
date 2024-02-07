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

final public class Trie<Key: Hashable> {

    public typealias Node = Trie

    public var children: [Key: Node]

    public var isEnd: Bool

    public var indices: [Int]

    public var count: Int

    public init() {
        children = [:]
        isEnd = false
        indices = []
        count = 0
    }

    public func insert<S>(
        _ sequence: S,
        forEach body: ((Node) -> Void)? = nil) where Key == S.Element, S: Sequence {

        var node = self
        for key in sequence {
            if node.children[key] == nil {
                node.children[key] = Node()
            }

            node = node.children[key]!
            node.count += 1
            body?(node)
        }

        node.isEnd = true
    }

    public func search<S>(_ sequence: S) -> Node? where Key == S.Element, S: Sequence {
        var node = self
        for key in sequence {
            guard let next = node.children[key] else {
                return nil
            }

            node = next
        }

        return node
    }
}
