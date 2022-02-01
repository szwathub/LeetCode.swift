//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestNiceSubstring.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/2/2: Created by szwathub on 2022/2/2
//

class LongestNiceSubstring {
    func longestNiceSubstring(_ s: String) -> String {
        let list = Array(s)
        var maxPos = 0
        var maxLen = 0

        for i in 0..<list.count {
            var lower = 0
            var upper = 0
            for j in i..<list.count {
                if list[j].isLowercase {
                    lower |= 1 << Int(list[j].asciiValue! - Character("a").asciiValue!)
                } else {
                    upper |= 1 << Int(list[j].asciiValue! - Character("A").asciiValue!)
                }

                if lower == upper && j - i + 1 > maxLen {
                    maxPos = i
                    maxLen = j - i + 1
                }
            }
        }

        return String(list[maxPos..<maxPos + maxLen])
    }
}
