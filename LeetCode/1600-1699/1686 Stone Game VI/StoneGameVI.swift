//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: StoneGameVI.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/stone-game-vi/description/
//  History:
//      2024/2/2: Created by szwathub on 2024/2/2
//

class StoneGameVI {

    fileprivate typealias Pair = (value: Int, aliceValue: Int, bobValue: Int)

    func stoneGameVI(_ aliceValues: [Int], _ bobValues: [Int]) -> Int {
        var values: [Pair] = []
        for (aliceValue, bobValue) in zip(aliceValues, bobValues) {
            values.append((aliceValue + bobValue, aliceValue, bobValue))
        }
        values.sort { $0.value > $1.value }
        var aliceSum = 0, bobSum = 0
        for (index, value) in values.enumerated() {
            if index % 2 == 0 {
                aliceSum += value.aliceValue
            } else {
                bobSum += value.bobValue
            }
        }

        if aliceSum > bobSum {
            return 1
        } else if aliceSum == bobSum {
            return 0
        } else {
            return -1
        }
    }
}
