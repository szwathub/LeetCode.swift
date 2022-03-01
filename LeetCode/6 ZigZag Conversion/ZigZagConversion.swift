//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ZigZagConversion.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/1: Created by szwathub on 2022/3/1
//

class ZigZagConversion {
    func convert(_ s: String, _ numRows: Int) -> String {
        if numRows == 1 {
            return s
        }
        let n = (numRows - 1) * 2
        let sAry = Array(s)
        var rows: [String] = [String](repeating: "", count: n)

        for index in 0..<sAry.count {
            let temp = index % n
            let subIdx = min(n - temp, temp)

            rows[subIdx] += "\(sAry[index])"
        }

        return rows.joined(separator: "")
    }
}
