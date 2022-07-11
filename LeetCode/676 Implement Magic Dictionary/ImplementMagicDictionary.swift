//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ImplementMagicDictionary.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/323
//  History:
//      2022/7/11: Created by szwathub on 2022/7/11
//

import Structure

class MagicDictionary {

    var trie: Trie

    init() {
        trie = Trie()
    }

    func buildDict(_ dictionary: [String]) {
        for word in dictionary {
            trie.insert(word)
        }
    }

    func search(_ searchWord: String) -> Bool {
        let word = Array(searchWord)
        func dfs(_ node: Trie.Node, _ pos: Int, _ modified: Bool) -> Bool {
            if pos == word.count {
                return modified && node.isEnd
            }

            if let next = node.children[word[pos]] {
                if dfs(next, pos + 1, modified) {
                    return true
                }
            }

            if !modified {
                for (key, next) in node.children where key != word[pos] {
                    if dfs(next, pos + 1, true) {
                        return true
                    }
                }
            }

            return false
        }

        return dfs(trie.root, 0, false)
    }
}
