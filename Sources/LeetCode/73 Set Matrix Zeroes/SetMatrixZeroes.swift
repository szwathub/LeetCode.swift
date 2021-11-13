//
//  File name: SetMatrixZeroes.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/13: Created by szwathub on 2021/11/13
//

import Foundation

class SetMatrixZeroes {
    func setZeroes(_ matrix: inout [[Int]]) {
        let row = matrix.count
        let col = matrix[0].count
        var flagrow = false, flagcol = false

        for index in 0..<row where matrix[index][0] == 0 {
            flagrow = true
        }
        for index in 0..<col where matrix[0][index] == 0 {
            flagcol = true
        }

        for i in 0..<row {
            for j in 0..<col where matrix[i][j] == 0 {
                matrix[i][0] = 0
                matrix[0][j] = 0
            }
        }

        for i in 1..<row {
            for j in 1..<col where matrix[i][0] == 0 || matrix[0][j] == 0 {
                matrix[i][j] = 0
            }
        }

        for index in 0..<row where flagrow {
            matrix[index][0] = 0
        }
        for index in 0..<col where flagcol {
            matrix[0][index] = 0
        }
    }
}
