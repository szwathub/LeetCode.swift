//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DiagonalTraverse.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/313
//  History:
//      2022/7/3: Created by szwathub on 2022/7/3
//

class DiagonalTraverse {
    func findDiagonalOrder(_ mat: [[Int]]) -> [Int] {
        var ans = [Int]()
        let m = mat.count, n = mat[0].count

        for i in stride(from: 0, to: m + n, by: 1) {
            if i % 2 == 0 {
                var x = i < m ? i : m - 1
                var y = i < m ? 0 : i - m + 1
                while x >= 0 && y < n {
                    ans.append(mat[x][y])
                    x -= 1
                    y += 1
                }
            } else {
                var x = i < n ? 0 : i - n + 1
                var y = i < n ? i : n - 1
                while x < m && y >= 0 {
                    ans.append(mat[x][y])
                    x += 1
                    y -= 1
                }
            }
        }

        return ans
    }
}
