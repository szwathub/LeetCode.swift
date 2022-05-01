//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RepeatedSubstringPattern.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

class RepeatedSubstringPattern {
    func repeatedSubstringPattern(_ s: String) -> Bool {
        let list = Array(s), count = s.count
        var index = 1
        while index * 2 <= count {
            if count % index == 0 {
                var match = true
                for j in stride(from: index, to: count, by: 1) {
                    if list[j] != list[j - index] {
                        match = false
                        break
                    }
                }

                if match {
                    return true
                }
            }

            index += 1
        }

        return false
    }
}
