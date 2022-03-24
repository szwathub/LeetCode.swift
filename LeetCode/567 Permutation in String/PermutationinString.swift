//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PermutationinString.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/24: Created by szwathub on 2022/3/24
//

class PermutationinString {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        guard s1.count <= s2.count else {
            return false
        }

        var map1 = [Character: Int]()
        for character in s1 {
            map1[character, default: 0] += 1
        }

        var map2 = [Character: Int]()
        let list = Array(s2)
        for index in 0..<s2.count {
            let character = list[index]
            map2[character, default: 0] += 1

            if index >= s1.count {
                let prev = list[index - s1.count]
                if let value = map2[prev] {
                    if value == 1 {
                        map2.removeValue(forKey: prev)
                    } else {
                        map2[prev] = value - 1
                    }
                }
            }

            if map1 == map2 {
                return true
            }
        }

        return false
    }
}
