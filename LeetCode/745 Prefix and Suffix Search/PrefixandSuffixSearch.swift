//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PrefixandSuffixSearch.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/326
//  History:
//      2022/7/14: Created by szwathub on 2022/7/14
//

import Structure

class WordFilter {

    var root: Trie

    var tial: Trie

    init(_ words: [String]) {
        root = Trie()
        tial = Trie()

        for (index, word) in words.enumerated() {
            root.insert(word) { $0.indices.append(index) }
            tial.insert(word.reversed()) { $0.indices.append(index) }
        }
    }

    func f(_ pref: String, _ suff: String) -> Int {
        guard let pre = root.search(pref),
              let suf = tial.search(suff.reversed()) else {
            return -1
        }

        var i = pre.indices.count - 1, j = suf.indices.count - 1
        while i >= 0 && j >= 0 {
            if pre.indices[i] > suf.indices[j] {
                i -= 1
            } else if pre.indices[i] < suf.indices[j] {
                j -= 1
            } else {
                return pre.indices[i]
            }
        }

        return -1
    }
}
