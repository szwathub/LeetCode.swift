//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DistanceBetweenBusStops.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/341
//  History:
//      2022/7/24: Created by szwathub on 2022/7/24
//

class DistanceBetweenBusStops {
    func distanceBetweenBusStops(_ distance: [Int],
                                 _ start: Int,
                                 _ destination: Int) -> Int {

        let total = distance.reduce(0, +)

        var goal = 0
        for index in min(start, destination)..<max(start, destination) {
            goal += distance[index]
        }

        return min(total - goal, goal)
    }
}
