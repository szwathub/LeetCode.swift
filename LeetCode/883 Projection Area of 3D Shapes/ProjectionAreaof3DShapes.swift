//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ProjectionAreaof3DShapes.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/26: Created by szwathub on 2022/4/26
//

class ProjectionAreaof3DShapes {
    func projectionArea(_ grid: [[Int]]) -> Int {
        var answer = 0
        let m = grid.count, n = grid[0].count

        for i in 0..<m {
            var area = 0
            for j in 0..<n {
                if grid[i][j] != 0 {
                    answer += 1
                }
                area = max(area, grid[i][j])
            }
            answer += area
        }

        for j in 0..<n {
            var area = 0
            for i in 0..<m {
                area = max(area, grid[i][j])
            }
            answer += area
        }

        return answer
    }
}
