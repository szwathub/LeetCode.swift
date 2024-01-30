//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumSecondstoEqualizeaCircularArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/minimum-seconds-to-equalize-a-circular-array/description/
//  History:
//      2024/1/30: Created by szwathub on 2024/1/30
//

class MinimumSecondstoEqualizeaCircularArray {

    func minimumSeconds(_ nums: [Int]) -> Int {
        var map: [Int: [Int]] = [:]
        for (index, num) in nums.enumerated() {
            map[num, default: []].append(index)
        }

        var ans = Int.max
        for pos in map.values where !pos.isEmpty {
            var distance = pos[0] + nums.count - pos[pos.count - 1]
            for index in 1..<pos.count {
                distance = max(distance, pos[index] - pos[index - 1])
            }

            ans = min(ans, distance / 2)
        }

        return ans
    }
}
