//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MaxIncreasetoKeepCitySkyline.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/13: Created by szwathub on 2021/12/13
//

class MaxIncreasetoKeepCitySkyline {
    func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
        var row = [Int](repeating: 0, count: grid[0].count)
        var col = [Int](repeating: 0, count: grid.count)

        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                row[i] = max(grid[i][j], row[i])
                col[j] = max(grid[i][j], col[j])
            }
        }

        var answer = 0
        for i in 0..<grid.count {
            for j in 0..<grid[0].count {
                answer += min(row[i], col[j]) - grid[i][j]
            }
        }

        return answer
    }
}
