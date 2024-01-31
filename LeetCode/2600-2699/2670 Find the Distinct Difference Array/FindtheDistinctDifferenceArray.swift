//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: FindtheDistinctDifferenceArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/find-the-distinct-difference-array/description/
//  History:
//      2024/1/31: Created by szwathub on 2024/1/31
//

class FindtheDistinctDifferenceArray {
    func distinctDifferenceArray(_ nums: [Int]) -> [Int] {
        var suff = [Int](repeating: 0, count: nums.count + 1)
        var set: Set<Int> = []
        for index in stride(from: nums.count - 1, to: 0, by: -1) {
            set.insert(nums[index])
            suff[index] = set.count
        }

        set.removeAll()
        var ans: [Int] = []
        for (index, num) in nums.enumerated() {
            set.insert(num)
            ans.append(set.count - suff[index + 1])
        }

        return ans
    }
}
