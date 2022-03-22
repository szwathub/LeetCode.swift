//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ReverseString.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/22: Created by szwathub on 2022/3/22
//

class ReverseString {
    func reverseString(_ s: inout [Character]) {
        var low = 0, high = s.count - 1
        while low < high {
            (s[low], s[high]) = (s[high], s[low])
            low += 1
            high -= 1
        }
    }
}
