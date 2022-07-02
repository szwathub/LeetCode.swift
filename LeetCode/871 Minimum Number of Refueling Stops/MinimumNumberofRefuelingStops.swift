//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumNumberofRefuelingStops.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/310
//  History:
//      2022/7/2: Created by szwathub on 2022/7/2
//

import Structure

class MinimumNumberofRefuelingStops {
    func minRefuelStops(_ target: Int, _ startFuel: Int, _ stations: [[Int]]) -> Int {
        var queue = PriorityQueue<Int>.init(sort: >)
        var index = 0
        var remain = startFuel, location = 0, ans = 0

        while location < target {
            if remain == 0 {
                guard let most = queue.dequeue() else {
                    return -1
                }

                ans += 1
                remain += most
            }

            location += remain
            remain = 0
            while index < stations.count && stations[index][0] <= location {
                queue.enqueue(stations[index][1])
                index += 1
            }
        }

        return ans
    }
}
