//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReplaceWords.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/320
//  History:
//      2022/7/8: Created by szwathub on 2022/7/8
//

import Structure

class ReplaceWords {
    func replaceWords(_ dictionary: [String], _ sentence: String) -> String {
        let trie = Trie()
        for root in dictionary {
            trie.insert(root)
        }

        let words = sentence.split(separator: " ").compactMap({ String($0) })
        var ans = [String]()
        for word in words {
            ans.append(search(word: word, in: trie))
        }

        return ans.joined(separator: " ")
    }

    private func search(word: String, in trie: Trie) -> String {
        var node = trie.root
        var root: String = ""
        for character in word {
            guard !node.isEnd else {
                return root
            }

            root.append(character)
            guard let next = node.children[character] else {
                break
            }

            node = next
        }

        return word
    }
}
