//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MaxAreaofIsland.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/25: Created by szwathub on 2022/3/25
//

class MaxAreaofIsland {
    func maxAreaOfIsland(_ grid: [[Int]]) -> Int {
        var answer = 0
        var grid = grid
        let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                var area = 0
                var stack: [(Int, Int)] = [(i, j)]
                while let current = stack.popLast() {
                    if current.0 < 0 || current.1 < 0
                        || current.0 == grid.count || current.1 == grid[0].count
                        || grid[current.0][current.1] != 1 {
                        continue
                    }

                    area += 1
                    grid[current.0][current.1] = 0
                    for direction in directions {
                        let x = current.0 + direction.0
                        let y = current.1 + direction.1
                        stack.append((x, y))
                    }
                }
                answer = max(answer, area)
            }
        }

        return answer
    }
}
