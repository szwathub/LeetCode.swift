//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FloodFill.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/25: Created by szwathub on 2022/3/25
//

class FloodFill {

    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ newColor: Int) -> [[Int]] {
        let currentColor = image[sr][sc]
        guard currentColor != newColor else {
            return image
        }

        var queue = [(Int, Int)]()
        let directions = [(0, 1), (0, -1), (1, 0), (-1, 0)]
        queue.append((sr, sc))

        var answer = image
        answer[sr][sc] = newColor

        let m = image.count
        let n = image[0].count

        while let current = queue.popLast() {
            for direction in directions {
                let x = current.0 + direction.0
                let y = current.1 + direction.1
                if x >= 0 && x < m && y >= 0 && y < n && answer[x][y] == currentColor {
                    answer[x][y] = newColor
                    queue.append((x, y))
                }
            }
        }

        return answer
    }
}
