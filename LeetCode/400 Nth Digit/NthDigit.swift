//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: NthDigit.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/30: Created by szwathub on 2021/11/30
//

import Darwin

class NthDigit {
    func findNthDigit(_ n: Int) -> Int {
        var n: Double = Double(n)
        var len: Double = 1

        while len * 9 * pow(10, len - 1) < n {
            n -= len * 9 * pow(10, len - 1)
            len += 1
        }

        let base = Int(pow(10, len - 1))
        let num = base + Int(n / len) - 1
        n -= Double(num - base + 1) * len
        var answer = 0
        if n == 0 {
            answer = Int(num % 10)
        } else {
            answer = num / Int(pow(10, len - Double(n))) % 10
        }

        return answer
    }
}
