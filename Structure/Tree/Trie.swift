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

        fileprivate var children = [Character: Node]()

        fileprivate var isEnd = false
    }

    var root: Node

    init() {
        root = Node()
    }

    public func insert(_ word: String) {
        var node = root
        for character in word {
            if node.children[character] == nil {
                node.children[character] = Node()
            }

            node = node.children[character]!
        }

        node.isEnd = true
    }
}
