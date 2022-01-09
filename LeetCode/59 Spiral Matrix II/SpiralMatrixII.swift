//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SpiralMatrixII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/10: Created by szwathub on 2022/1/10
//

class SpiralMatrixII {

    func generateMatrix(_ n: Int) -> [[Int]] {
        var answer = [[Int]](repeating: [Int](repeating: 0, count: n), count: n)

        var row = 0, col = 0
        var value = 1
        var direction = 0 // 0 right 1 down 2 left 3 up
        while value <= n * n {
            answer[row][col] = value
            value += 1

            var next = nextIndex(row, col, direction)
            if next.0 < 0 || next.1 < 0 || next.0 >= n || next.1 >= n || answer[next.0][next.1] != 0 {
                direction = (direction + 1) % 4
                next = nextIndex(row, col, direction)
            }

            row = next.0
            col = next.1
        }

        return answer
    }

    func nextIndex(_ row: Int, _ col: Int, _ direction: Int) -> (Int, Int) {
        var row = row
        var col = col

        if direction == 0 {
            col += 1
        } else if direction == 1 {
            row += 1
        } else if direction == 2 {
            col -= 1
        } else {
            row -= 1
        }

        return (row, col)
    }
}
