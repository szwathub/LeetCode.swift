//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumPathSum.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/28: Created by szwathub on 2021/11/28
//

import Foundation

class MinimumPathSum {
    func minPathSum(_ grid: [[Int]]) -> Int {
        let m = grid.count
        let n = grid[0].count
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)

        for i in 0..<m {
            for j in 0..<n {
                switch (i, j) {
                    case (0, 0):
                        dp[i][j] = grid[i][j]
                    case (0, _):
                        dp[i][j] = dp[i][j - 1] + grid[i][j]
                    case (_, 0):
                        dp[i][j] = dp[i - 1][j] + grid[i][j]
                    default:
                        dp[i][j] = min(dp[i][j - 1], dp[i - 1][j]) + grid[i][j]
                }
            }
        }

        return dp[m - 1][n - 1]
    }
}
