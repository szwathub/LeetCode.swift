//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ValidTicTacToeState.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/9: Created by szwathub on 2021/12/9
//

class ValidTicTacToeState {
    func validTicTacToe(_ board: [String]) -> Bool {
        var xCount = 0, oCount = 0

        for row in board {
            for character in row {
                xCount += character == "X" ? 1 : 0
                oCount += character == "O" ? 1 : 0
            }
        }

        if oCount != xCount && oCount != xCount - 1 {
            return false
        }

        if check(board.map { Array($0) }, "X") && oCount != xCount - 1 {
            return false
        }

        if check(board.map { Array($0) }, "O") && xCount != oCount {
            return false
        }

        return true
    }

    private func check(_ board: [[Character]], _ player: Character) -> Bool {
        for index in 0..<3 {
            if player == board[0][index] && player == board[1][index] && player == board[2][index] {
                return true
            }
            if player == board[index][0] && player == board[index][1] && player == board[index][2] {
                return true
            }
        }

        if player == board[0][0] && player == board[1][1] && player == board[2][2] {
            return true
        }
        if player == board[0][2] && player == board[1][1] && player == board[2][0] {
            return true
        }

        return false
    }
}
