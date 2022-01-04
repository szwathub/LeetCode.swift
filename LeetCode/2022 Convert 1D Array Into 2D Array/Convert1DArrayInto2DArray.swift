//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Convert1DArrayInto2DArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/4: Created by szwathub on 2022/1/4
//

class Convert1DArrayInto2DArray {
    func construct2DArray(_ original: [Int], _ m: Int, _ n: Int) -> [[Int]] {
        guard m * n == original.count else {
            return []
        }

        var ans = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)
        var index = 0
        for i in 0..<m {
            for j in 0..<n {
                ans[i][j] = original[index]
                index += 1
            }
        }

        return ans
    }
}
