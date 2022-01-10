//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RotateImage.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/10: Created by szwathub on 2022/1/10
//

class RotateImage {
    func rotate(_ matrix: inout [[Int]]) {
        for col in 0..<matrix[0].count {
            var top = 0
            var bottom = matrix.count - 1
            while top < bottom {
                (matrix[top][col], matrix[bottom][col]) = (matrix[bottom][col], matrix[top][col])
                top += 1
                bottom -= 1
            }
        }

        for row in 0..<matrix.count {
            for col in 0..<row {
                (matrix[row][col], matrix[col][row]) = (matrix[col][row], matrix[row][col])
            }
        }
    }
}
