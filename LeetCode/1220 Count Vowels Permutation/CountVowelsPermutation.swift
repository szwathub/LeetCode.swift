//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CountVowelsPermutation.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/17: Created by szwathub on 2022/1/17
//

class CountVowelsPermutation {

    private let MOD: Int = 1000000007

    func countVowelPermutation(_ n: Int) -> Int {
        var dp = [Int](repeating: 1, count: 5)
        var ndp = [Int](repeating: 1, count: 5)

        for _ in 1..<n {
            ndp[0] = (dp[1] + dp[2] + dp[4]) % MOD
            ndp[1] = (dp[0] + dp[2]) % MOD
            ndp[2] = (dp[1] + dp[3]) % MOD
            ndp[3] = dp[2]
            ndp[4] = (dp[2] + dp[3]) % MOD
            dp = ndp
        }

        var answer = 0
        for count in dp {
            answer = (answer + count) % MOD
        }

        return answer
    }
}
