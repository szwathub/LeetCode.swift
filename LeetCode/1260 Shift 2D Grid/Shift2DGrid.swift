//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Shift2DGrid.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/338
//  History:
//      2022/7/20: Created by szwathub on 2022/7/20
//

class Shift2DGrid {
    func shiftGrid(_ grid: [[Int]], _ k: Int) -> [[Int]] {
        let m = grid.count, n = grid[0].count
        var ans = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)

        for (i, row) in grid.enumerated() {
            for (j, value) in row.enumerated() {
                let offset = (i * n + j + k) % (m * n)
                ans[offset / n][offset % n] = value
            }
        }

        return ans
    }
}
