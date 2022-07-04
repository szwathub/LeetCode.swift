//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumAbsoluteDifference.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/316
//  History:
//      2022/7/4: Created by szwathub on 2022/7/4
//

class MinimumAbsoluteDifference {
    func minimumAbsDifference(_ arr: [Int]) -> [[Int]] {
        let sorted = arr.sorted()
        var abs = Int.max
        var ans = [[Int]]()

        for index in stride(from: 0, to: arr.count - 1, by: 1) {
            let delta = sorted[index + 1] - sorted[index]
            if delta < abs {
                abs = delta
                ans = [[sorted[index], sorted[index + 1]]]
            } else if delta == abs {
                ans.append([sorted[index], sorted[index + 1]])
            }
        }

        return ans
    }
}
