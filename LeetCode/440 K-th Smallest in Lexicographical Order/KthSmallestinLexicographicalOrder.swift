//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KthSmallestinLexicographicalOrder.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/23: Created by szwathub on 2022/3/23
//

class KthSmallestinLexicographicalOrder {
    func findKthNumber(_ n: Int, _ k: Int) -> Int {
        var current = 1
        var k = k - 1

        while k > 0 {
            let count = getCount(current, n)
            if count <= k {
                k -= count
                current += 1
            } else {
                current *= 10
                k -= 1
            }
        }

        return current
    }

    private func getCount(_ current: Int, _ n: Int) -> Int {
        var count = 0
        var first = current
        var last = current

        while first <= n {
            count += min(last, n) - first + 1
            first *= 10
            last = last * 10 + 9
        }

        return count
    }
}
