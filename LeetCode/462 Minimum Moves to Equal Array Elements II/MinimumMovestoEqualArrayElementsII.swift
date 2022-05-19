//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumMovestoEqualArrayElementsII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/19: Created by szwathub on 2022/5/19
//

class MinimumMovestoEqualArrayElementsII {
    func minMoves2(_ nums: [Int]) -> Int {
        let sorted = nums.sorted()
        let mid = sorted[sorted.count / 2]

        var ans = 0
        for num in nums {
            ans += abs(mid - num)
        }

        return ans
    }
}
