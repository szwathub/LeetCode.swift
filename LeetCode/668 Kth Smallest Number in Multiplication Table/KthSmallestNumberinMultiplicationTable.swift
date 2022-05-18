//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KthSmallestNumberinMultiplicationTable.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/18: Created by szwathub on 2022/5/18
//

class KthSmallestNumberinMultiplicationTable {
    func findKthNumber(_ m: Int, _ n: Int, _ k: Int) -> Int {
        var left = 1, right = m * n

        while left < right {
            let mid = (left + right) >> 1

            var sum = mid / n * n
            for x in stride(from: mid / n + 1, through: m, by: 1) {
                sum += mid / x
            }

            if sum >= k {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return left
    }
}
