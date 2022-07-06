//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MatchstickstoSquare.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/318
//  History:
//      2022/7/6: Created by szwathub on 2022/7/6
//

class MatchstickstoSquare {
    func makesquare(_ matchsticks: [Int]) -> Bool {
        let total = matchsticks.reduce(0, +)

        guard total % 4 == 0 else {
            return false
        }

        let sorted = matchsticks.sorted(by: >)
        var edges = [Int](repeating: 0, count: 4)

        func dfs(_ index: Int) -> Bool {
            if index == sorted.count {
                return true
            }

            for i in 0..<4 {
                edges[i] += sorted[index]
                if edges[i] <= total / 4 && dfs(index + 1) {
                    return true
                }
                edges[i] -= sorted[index]
            }

            return false
        }

        return dfs(0)
    }
}
