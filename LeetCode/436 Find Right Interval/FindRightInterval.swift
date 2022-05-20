//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindRightInterval.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/20: Created by szwathub on 2022/5/20
//

class FindRightInterval {
    func findRightInterval(_ intervals: [[Int]]) -> [Int] {
        var sorted = [[Int]](repeating: [], count: intervals.count)
        for (index, interval) in intervals.enumerated() {
            sorted[index] = interval
            sorted[index].append(index)
        }

        sorted.sort { $0[0] < $1[0] }

        var ans = [Int](repeating: -1, count: intervals.count)
        for i in 0..<intervals.count {
            var l = 0, r = intervals.count - 1
            while l < r {
                let mid = (l + r) >> 1
                if sorted[mid][0] >= intervals[i][1] {
                    r = mid
                } else {
                    l = mid + 1
                }
            }
            ans[i] = sorted[r][0] >= intervals[i][1] ? sorted[r][2] : -1
        }

        return ans
    }
}
