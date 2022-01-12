//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestPalindrome.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/13: Created by szwathub on 2022/1/13
//

class LongestPalindrome {
    func longestPalindrome(_ s: String) -> Int {
        var map = [Character: Int]()
        for character in s {
            map[character, default: 0] += 1
        }

        var flag = false
        return map.values.reduce(0) { partial, value in
            var count = value
            if count % 2 == 1 {
                if flag {
                    count -= 1
                }
                flag = true
            }
            return partial + count
        }
    }
}
