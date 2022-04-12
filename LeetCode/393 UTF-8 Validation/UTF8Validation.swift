//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: UTF8Validation.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/12: Created by szwathub on 2022/4/12
//

class UTF8Validation {
    func validUtf8(_ data: [Int]) -> Bool {
        var index = 0
        while index < data.count {
            let t = data[index]
            var j = 7
            while j >= 0 && (((t >> j) & 1) == 1) {
                j -= 1
            }
            let bits = 7 - j
            if bits == 0 {
                index += 1
                continue
            }

            if bits == 1 || bits > 4 || index + bits - 1 >= data.count {
                return false
            }

            for k in index + 1..<index + bits {
                if ((data[k] >> 7) & 1) == 1 && ((data[k] >> 6) & 1) == 0 {
                    continue
                }
                return false
            }

            index += bits
        }

        return true
    }
}
