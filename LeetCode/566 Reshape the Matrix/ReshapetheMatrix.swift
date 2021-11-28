//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ReshapetheMatrix.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/28: Created by szwathub on 2021/10/28
//

class ReshapetheMatrix {
    func matrixReshape(_ mat: [[Int]], _ r: Int, _ c: Int) -> [[Int]] {
        let m = mat.count
        let n = mat[0].count

        guard r * c == m * n else {
            return mat
        }

        var answer = [[Int]](repeating: [Int](repeating: 0, count: c), count: r)
        for index in 0..<(m * n) {
            answer[index / c][index % c] = mat[index / n][index % n]
        }

        return answer
    }
}
