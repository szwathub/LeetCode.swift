//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ArrayNesting.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/332
//  History:
//      2022/7/18: Created by szwathub on 2022/7/18
//

class ArrayNesting {
    func arrayNesting(_ nums: [Int]) -> Int {
        var ans = 0
        var nums = nums

        for i in 0..<nums.count where nums[i] < nums.count {
            var cnt = 0
            var index = i
            while nums[index] < nums.count {
                (index, nums[index]) = (nums[index], nums.count)
                cnt += 1
            }
            ans = max(cnt, ans)
        }

        return ans
    }
}
