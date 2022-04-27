//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PacificAtlanticWaterFlow.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/27: Created by szwathub on 2022/4/27
//

class PacificAtlanticWaterFlow {

    let directions = [(-1, 0), (0, 1), (1, 0), (0, -1)]
    var m = 0
    var n = 0

    func pacificAtlantic(_ heights: [[Int]]) -> [[Int]] {
        m = heights.count
        n = heights[0].count

        var topLeft = [[Int]]()
        for index in 0..<n {
            topLeft.append([0, index])
        }
        for index in 1..<m {
            topLeft.append([index, 0])
        }

        var bottomRight = [[Int]]()
        for index in 0..<n {
            bottomRight.append([m - 1, index])
        }
        for index in 0..<m - 1 {
            bottomRight.append([index, n - 1])
        }

        let pacific = search(topLeft, heights)
        let atlantic = search(bottomRight, heights)

        return Array(pacific.intersection(atlantic))
    }

    private func search(_ list: [[Int]], _ matrix: [[Int]]) -> Set<[Int]> {
        var visited = Set<[Int]>()

        for index in list {
            dfs(index[0], index[1], matrix, &visited)
        }

        return visited
    }

    private func dfs(_ r: Int, _ c: Int, _ matrix: [[Int]], _ visited: inout Set<[Int]>) {
        if visited.contains([r, c]) {
            return
        }

        visited.insert([r, c])
        for direction in self.directions {
            let nx = r + direction.0
            let ny = c + direction.1

            if self.inIsland(nx, ny) && matrix[nx][ny] >= matrix[r][c] {
                dfs(nx, ny, matrix, &visited)
            }
        }
    }

    private func inIsland(_ r: Int, _ c: Int) -> Bool {
        if r >= 0 && r < m && c >= 0 && c < n {
            return true
        }

        return false
    }
}
