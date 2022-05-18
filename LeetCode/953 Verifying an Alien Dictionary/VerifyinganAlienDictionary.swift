//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: VerifyinganAlienDictionary.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/18: Created by szwathub on 2022/5/18
//

class VerifyinganAlienDictionary {
    func isAlienSorted(_ words: [String], _ order: String) -> Bool {
        var map = [Character: Int]()
        for (index, char) in order.enumerated() {
            map[char] = index
        }

        for index in 0..<words.count - 1 {
            var valid = false
            for (first, second) in zip(words[index], words[index + 1]) where first != second {
                if map[first]! > map[second]! {
                    return false
                }

                valid = true
                break
            }

            if !valid && words[index].count > words[index + 1].count {
                return false
            }
        }

        return true
    }
}
