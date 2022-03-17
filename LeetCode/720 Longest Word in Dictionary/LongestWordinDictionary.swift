//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestWordinDictionary.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/17: Created by szwathub on 2022/3/17
//

import Structure

class LongestWordinDictionary {
    func longestWord(_ words: [String]) -> String {
        let trie = Trie()

        for word in words.sorted() {
            trie.insert(word)
        }

        var answer = ""
        for word in words {
            if search(word: word, in: trie) {
                if word.count > answer.count {
                    answer = word
                } else if word.count == answer.count && word < answer {
                    answer = word
                }
            }
        }

        return answer
    }

    private func search(word: String, in trie: Trie) -> Bool {
        var node = trie.root
        for character in word {
            guard let next = node.children[character], next.isEnd else {
                return false
            }

            node = next
        }

        return node.isEnd
    }
}
