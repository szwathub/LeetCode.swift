//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: StoneGameVII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/stone-game-vii/description/
//  History:
//      2024/2/3: Created by szwathub on 2024/2/3
//

class StoneGameVII {

    private var cache: [[Int]] = []

    func stoneGameVII(_ stones: [Int]) -> Int {
        let count = stones.count
        var prefix = [Int](repeating: 0, count: count + 1)
        cache = [[Int]](
            repeating: [Int](repeating: -1, count: count), count: count
        )
        var sum = 0
        for (index, stone) in stones.enumerated() {
            sum += stone
            prefix[index + 1] = sum
        }

        func dfs(_ start: Int, _ end: Int) -> Int {
            guard start != end else { return 0 }
            if cache[start][end] == -1 {
                cache[start][end] = max(
                    prefix[end + 1] - prefix[start + 1] - dfs(start + 1, end),
                    prefix[end] - prefix[start] - dfs(start, end - 1)
                )
            }
            return cache[start][end]
        }

        return dfs(0, stones.count - 1)
    }
}
