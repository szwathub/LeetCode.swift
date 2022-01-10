//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Searcha2DMatrixII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/11: Created by szwathub on 2022/1/11
//

class Searcha2DMatrixII {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
        var row = 0
        var col = matrix[0].count - 1

        while row < matrix.count && col >= 0 {
            if matrix[row][col] == target {
                return true
            } else if matrix[row][col] > target {
                col -= 1
            } else {
                row += 1
            }
        }

        return false
    }
}
