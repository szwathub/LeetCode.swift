//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ColoringABorder.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/7: Created by szwathub on 2021/12/7
//

class ColoringABorder {
    func colorBorder(_ grid: [[Int]], _ row: Int, _ col: Int, _ color: Int) -> [[Int]] {
        let m = grid.count, n = grid[0].count
        let operations = [(-1, 0), (1, 0), (0, -1), (0, 1)]

        var quene: [(Int, Int)] = [(row, col)]
        var visited = [(Int, Int)]()
        var answer = grid

        while !quene.isEmpty {
            let point = quene.removeLast()
            if visited.contains(where: { $0.0 == point.0 && $0.1 == point.1 }) {
                continue
            }

            visited.append((point.0, point.1))

            var border = false
            if point.0 == 0 || point.0 == m - 1 || point.1 == 0 || point.1 == n - 1 {
                border = true
            }

            for operation in operations {
                let x = point.0 + operation.0
                let y = point.1 + operation.1

                if case 0..<m = x, case 0..<n = y {
                    if grid[x][y] != grid[point.0][point.1] {
                        border = true
                    } else {
                        quene.append((x, y))
                    }
                }
            }

            if border {
                answer[point.0][point.1] = color
            }
        }

        return answer
    }
}
