//
//  File name: RangeAdditionII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/7: Created by szwathub on 2021/11/7
//

import Foundation

class RangeAdditionII {
    func maxCount(_ m: Int, _ n: Int, _ ops: [[Int]]) -> Int {
        var x = m
        var y = n
        for operation in ops {
            x = min(x, operation[0])
            y = min(y, operation[1])
        }

        return x * y
    }
}
