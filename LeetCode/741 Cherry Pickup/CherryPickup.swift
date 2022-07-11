//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CherryPickup.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/322
//  History:
//      2022/7/10: Created by szwathub on 2022/7/10
//

class CherryPickup {
    func cherryPickup(_ grid: [[Int]]) -> Int {
        let n = grid.count
        var f = [[[Int]]](repeating: [[Int]](repeating: [Int](repeating: .min, count: n), count: n), count: n * 2 - 1)
        f[0][0][0] = grid[0][0]

        for k in stride(from: 1, to: n * 2 - 1, by: 1) {
            for x1 in max(k - n + 1, 0)..<min(k + 1, n) {
                let y1 = k - x1
                guard grid[x1][y1] != -1 else {
                    continue
                }

                for x2 in x1..<min(k + 1, n) {
                    let y2 = k - x2
                    guard grid[x2][y2] != -1 else {
                        continue
                    }

                    var res = f[k - 1][x1][x2] // 都往右
                    if x1 > 0 {
                        res = max(res, f[k - 1][x1 - 1][x2])
                    }
                    if x2 > 0 {
                        res = max(res, f[k - 1][x1][x2 - 1])
                    }
                    if x1 > 0 && x2 > 0 {
                        res = max(res, f[k - 1][x1 - 1][x2 - 1])
                    }

                    res += grid[x1][y1]
                    if x2 != x1 {
                        res += grid[x2][y2]
                    }
                    f[k][x1][x2] = res
                }
            }
        }

        return max(f[2 * n - 2][n - 1][n - 1], 0)
    }
}
