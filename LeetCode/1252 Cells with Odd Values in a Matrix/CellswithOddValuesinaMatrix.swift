//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CellswithOddValuesinaMatrix.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/324
//  History:
//      2022/7/12: Created by szwathub on 2022/7/12
//

class CellswithOddValuesinaMatrix {
    func oddCells(_ m: Int, _ n: Int, _ indices: [[Int]]) -> Int {
        var rows = [Int](repeating: 0, count: m)
        var cols = [Int](repeating: 0, count: n)

        for index in indices {
            let r = index[0], c = index[1]
            rows[r] += 1
            cols[c] += 1
        }

        let oddr = rows.filter { $0 % 2 == 0 }.count
        let oddc = cols.filter { $0 % 2 == 0 }.count

        return oddr * (n - oddc) + (m - oddr) * oddc
    }
}
