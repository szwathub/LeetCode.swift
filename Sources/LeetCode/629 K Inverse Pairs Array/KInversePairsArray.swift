//
//  File name: KInversePairsArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/11: Created by szwathub on 2021/11/11
//

import Foundation

class KInversePairsArray {
    private let MOD: Int = 1000000007

    func kInversePairs(_ n: Int, _ k: Int) -> Int {
        // dp[i][j]: [1, i]恰好形成j个逆序对的数组个数
        var dp = [[Int]](repeating: [Int](repeating: 0, count: k + 1), count: n + 1)
        var sum = [[Int]](repeating: [Int](repeating: 0, count: k + 1), count: n + 1)
        // 形成0个逆序对数组的数个数均为1
        for index in 1...n {
            dp[index][0] = 1
        }
        for index in 0...k {
            sum[1][index] = 1
        }

        guard n >= 2 else {
            return dp[n][k]
        }

        for i in 2...n {
            for j in 0...k {
                if j < i {
                    dp[i][j] = sum[i - 1][j]
                } else {
                    dp[i][j] = (sum[i - 1][j] - sum[i - 1][j - (i - 1) - 1] + MOD) % MOD
                }
                sum[i][j] = j == 0 ? dp[i][j] : (sum[i][j - 1] + dp[i][j]) % MOD
            }
        }

        return dp[n][k]
    }
}
