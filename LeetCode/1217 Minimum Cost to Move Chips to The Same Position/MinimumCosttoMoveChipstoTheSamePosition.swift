//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumCosttoMoveChipstoTheSamePosition.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/319
//  History:
//      2022/7/8: Created by szwathub on 2022/7/8
//

class MinimumCosttoMoveChipstoTheSamePosition {
    func minCostToMoveChips(_ position: [Int]) -> Int {
        var count = 0
        for pos in position where pos % 2 == 0 {
            count += 1
        }

        return min(count, position.count - count)
    }
}
