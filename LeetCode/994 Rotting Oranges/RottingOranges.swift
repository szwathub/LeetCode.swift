//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RottingOranges.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/29: Created by szwathub on 2022/3/29
//

class RottingOranges {
    func orangesRotting(_ grid: [[Int]]) -> Int {
        var queue = [(Int, Int)]()
        var fresh = 0
        var grid = grid

        for x in 0..<grid.count {
            for y in 0..<grid[0].count {
                if grid[x][y] == 2 {
                    queue.append((x, y))
                } else if grid[x][y] == 1 {
                    fresh += 1
                }
            }
        }

        if fresh == 0 {
            return 0
        }

        let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        var answer = -1
        while !queue.isEmpty {
            var level = [(Int, Int)]()
            for orange in queue {
                for direction in directions {
                    let x = orange.0 + direction.0
                    let y = orange.1 + direction.1

                    if x < 0 || y < 0 || x >= grid.count || y >= grid[0].count || grid[x][y] != 1 {
                        continue
                    }

                    fresh -= 1
                    grid[x][y] = 0

                    level.append((x, y))
                }
            }
            queue = level
            answer += 1
        }

        if fresh != 0 {
            return -1
        }

        return answer
    }
}
