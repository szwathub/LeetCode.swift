//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SetIntersectionSizeAtLeastTwo.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/340
//  History:
//      2022/7/22: Created by szwathub on 2022/7/22
//

class SetIntersectionSizeAtLeastTwo {
    func intersectionSizeTwo(_ intervals: [[Int]]) -> Int {
        let sorted = intervals.sorted { a, b in
            return a[0] == b[0] ? b[1] > a[1] : a[0] > b[0]
        }

        var min = -1, max = -1, ans = 0
        for (index, interval) in sorted.enumerated() {
            if index == 0 {
                min = interval[0]
                max = interval[0] + 1
                ans = 2
            } else {
                if interval[1] >= max {
                    continue
                } else if interval[1] < min {
                    min = interval[0]
                    max = interval[0] + 1
                    ans += 2
                } else {
                    max = min
                    min = interval[0]
                    ans += 1
                }
            }
        }

        return ans
    }
}
