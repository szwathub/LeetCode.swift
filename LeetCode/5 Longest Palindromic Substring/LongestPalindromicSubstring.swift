//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestPalindromicSubstring.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

class LongestPalindromicSubstring {
    func longestPalindrome(_ s: String) -> String {
        let list = Array(s)
        var start = 0, end = 0
        for index in 0..<list.count {
            let length = max(expandCenter(list: list, left: index, right: index),
                             expandCenter(list: list, left: index, right: index + 1))
            if length > end - start {
                start = index - (length - 1) / 2
                end = index + length / 2
            }
        }

        return String(list[start...end])
    }

    private func expandCenter(list: [Character], left: Int, right: Int) -> Int {
        var l = left
        var r = right

        while l >= 0 && r < list.count && list[l] == list[r] {
            l -= 1
            r += 1
        }

        return r - l - 1
    }
}
