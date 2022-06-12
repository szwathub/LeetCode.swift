//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindandReplacePattern.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/12: Created by szwathub on 2022/6/12
//

class FindandReplacePattern {
    func findAndReplacePattern(_ words: [String], _ pattern: String) -> [String] {
        var ans = [String]()
        for word in words {
            var map1 = [Character: Character]()
            var map2 = [Character: Character]()
            var valid = true

            for (a, b) in zip(word, pattern) {
                if !map1.keys.contains(a) {
                    map1[a] = b
                }
                if !map2.keys.contains(b) {
                    map2[b] = a
                }

                if map1[a] != b || map2[b] != a {
                    valid = false
                }
            }
            if valid {
                ans.append(word)
            }
        }

        return ans
    }
}
