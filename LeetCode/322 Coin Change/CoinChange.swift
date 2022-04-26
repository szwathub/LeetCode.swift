//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CoinChange.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/26: Created by szwathub on 2022/4/26
//

class CoinChange {
    func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        let MAX = amount + 1
        var dp = [Int](repeating: amount + 1, count: MAX)
        dp[0] = 0

        for index in stride(from: 1, through: amount, by: 1) {
            for coin in coins where coin <= index {
                dp[index] = min(dp[index], dp[index - coin] + 1)
            }
        }

        return dp[amount] > amount ? -1 : dp[amount]
    }
}
