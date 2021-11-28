//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: GuessNumberHigherorLowerII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/12: Created by szwathub on 2021/11/12
//

class GuessNumberHigherorLowerII {
    func getMoneyAmount(_ n: Int) -> Int {
        // dp[i][j] 表示在区间[i, j]内确保胜利的最少金额
        var dp = [[Int]](repeating: [Int](repeating: 0, count: n + 1), count: n + 1)

        for i in (1...n).reversed() where i + 1 <= n {
            for j in (i + 1)...n {
                var minCost = Int.max
                for x in i..<j {
                    let cost = x + max(dp[i][x - 1], dp[x + 1][j])
                    minCost = min(minCost, cost)
                }
                dp[i][j] = minCost
            }
        }

        return dp[1][n]
    }
}
