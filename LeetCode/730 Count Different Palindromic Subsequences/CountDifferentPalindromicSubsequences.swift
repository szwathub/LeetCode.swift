//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CountDifferentPalindromicSubsequences.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/329
//  History:
//      2022/7/16: Created by szwathub on 2022/7/16
//

class CountDifferentPalindromicSubsequences {

    private let MOD = 1_000_000_007

    func countPalindromicSubsequences(_ s: String) -> Int {
        func helper(_ s: [Character]) -> Int {
            let n = s.count
            var dp = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)
            var next = [[Int]](repeating: [Int](repeating: 0, count: 4), count: n)
            var pre = [[Int]](repeating: [Int](repeating: 0, count: 4), count: n)
            var pos = [Int](repeating: -1, count: 4)

            (0..<n).forEach { dp[$0][$0] = 1 }

            for i in 0..<n {
                for c in 0..<4 {
                    pre[i][c] = pos[c]
                }
                pos[Int(s[i].asciiValue! - Character("a").asciiValue!)] = i
            }

            (0..<4).forEach { pos[$0] = n }

            for i in stride(from: n - 1, through: 0, by: -1) {
                for c in 0..<4 {
                    next[i][c] = pos[c]
                }

                pos[Int(s[i].asciiValue! - Character("a").asciiValue!)] = i
            }

            for len in stride(from: 2, through: n, by: 1) {
                for i in stride(from: 0, through: n - len, by: 1) {
                    let j = i + len - 1
                    if s[i] == s[j] {
                        let low = next[i][Int(s[i].asciiValue! - Character("a").asciiValue!)]
                        let high = pre[j][Int(s[i].asciiValue! - Character("a").asciiValue!)]
                        if low > high {
                            dp[i][j] = (2 + dp[i + 1][j - 1] * 2) % MOD
                        } else if low == high {
                            dp[i][j] = (1 + dp[i + 1][j - 1] * 2) % MOD
                        } else {
                            dp[i][j] = (dp[i + 1][j - 1] * 2 % MOD - dp[low + 1][high - 1] + MOD) % MOD
                        }
                    } else {
                        dp[i][j] = ((dp[i + 1][j] + dp[i][j - 1]) % MOD - dp[i + 1][j - 1] + MOD) % MOD
                    }
                }
            }

            return dp[0][n - 1]
        }

        return helper(Array(s))
    }
}
