//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReverseWordsinaStringIII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/22: Created by szwathub on 2022/3/22
//

class ReverseWordsinaStringIII {
    func reverseWords(_ s: String) -> String {
        var list = Array(s)
        var start = 0
        for end in 0..<list.count {
            if list[end] == " " || end == list.count - 1 {
                var low = start, high = end == list.count - 1 ? end : end - 1
                while low < high {
                    (list[low], list[high]) = (list[high], list[low])
                    low += 1
                    high -= 1
                }

                if list[end] == " " {
                    start = end + 1
                }
            }
        }

        return String(list)
    }
}
