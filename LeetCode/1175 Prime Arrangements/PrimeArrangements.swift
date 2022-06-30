//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PrimeArrangements.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/307
//  History:
//      2022/6/30: Created by szwathub on 2022/6/30
//

class PrimeArrangements {

    let MOD = 1_000_000_007

    func numPrimeArrangements(_ n: Int) -> Int {
        let prime = (1...n).filter { isPrime($0) }.count

        return factorial(prime) * factorial(n - prime) % MOD
    }

    private func isPrime(_ n: Int) -> Bool {
        guard n >= 2 else {
            return false
        }

        var i = 2
        while i * i <= n {
            if n % i == 0 {
                return false
            }
            i += 1
        }

        return true
    }

    private func factorial(_ n: Int) -> Int {
        var ans = 1
        for i in stride(from: 1, through: n, by: 1) {
            ans *= i
            ans %= MOD
        }

        return ans
    }
}
