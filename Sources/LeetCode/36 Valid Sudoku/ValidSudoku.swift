//
//  File name: ValidSudoku.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/9: Created by szwathub on 2021/11/9
//

import Foundation

class ValidSudoku {
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        var line = [[Int]](repeating: [Int](repeating: 0, count: 9), count: 9)
        var column = [[Int]](repeating: [Int](repeating: 0, count: 9), count: 9)
        var block = [[Int]](repeating: [Int](repeating: 0, count: 9), count: 9)

        for x in 0..<9 {
            for y in 0..<9 {
                if board[x][y] == "." {
                    continue
                }

                let k = x / 3 * 3 + y / 3
                let num = (Int(String(board[x][y] ))!) - 1

                if line[x][num] != 0 || column[y][num] != 0 || block[k][num] != 0 {
                    return false
                }

                line[x][num] = 1
                column[y][num] = 1
                block[k][num] = 1
            }
        }

        return true
    }
}
