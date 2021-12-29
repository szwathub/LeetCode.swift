//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: CountSpecialQuadruplets.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/29: Created by szwathub on 2021/12/29
//

class CountSpecialQuadruplets {
    func countQuadruplets(_ nums: [Int]) -> Int {
        let count = nums.count
        var ans = 0
        var map = [Int: Int]()

        for b in stride(from: count - 3, through: 1, by: -1) {
            let c = b + 1
            for d in c + 1..<count {
                map[nums[d] - nums[c], default: 0] += 1
            }
            for a in 0..<b {
                ans += map[nums[a] + nums[b], default: 0]
            }
        }

        return ans
    }
}
