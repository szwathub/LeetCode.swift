//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LengthofLongestFibonacciSubsequence.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/321
//  History:
//      2022/7/9: Created by szwathub on 2022/7/9
//

class LengthofLongestFibonacciSubsequence {
    func lenLongestFibSubseq(_ arr: [Int]) -> Int {
        var indices = [Int: Int]()
        for (index, number) in arr.enumerated() {
            indices[number] = index
        }

        var ans = 0
        var dp = [[Int]](repeating: [Int](repeating: 0, count: arr.count), count: arr.count)

        for (i, number) in arr.enumerated() {
            for j in stride(from: arr.count - 1, through: 0, by: -1) {
                guard arr[j] * 2 > number else {
                    break
                }

                if let k = indices[number - arr[j]] {
                    dp[j][i] = max(dp[k][j] + 1, 3)
                    ans = max(ans, dp[j][i])
                }
            }
        }

        return ans
    }
}
