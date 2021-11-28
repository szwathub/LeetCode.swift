//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MinCostClimbingStairs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/13: Created by szwathub on 2021/11/13
//

class MinCostClimbingStairs {
    func minCostClimbingStairs(_ cost: [Int]) -> Int {
        guard cost.count >= 2 else {
            return 0
        }

        var prev = 0, current = 0
        for index in 2...cost.count {
            let next = min(current + cost[index - 1], prev + cost[index - 2])
            (current, prev) = (next, current)
        }

        return current
    }
}
