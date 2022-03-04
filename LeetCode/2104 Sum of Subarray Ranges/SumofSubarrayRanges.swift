//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SumofSubarrayRanges.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/4: Created by szwathub on 2022/3/4
//

class SumofSubarrayRanges {
    func subArrayRanges(_ nums: [Int]) -> Int {
        var sum = 0
        for start in 0..<nums.count {
            var min = nums[start]
            var max = nums[start]

            for end in (start + 1)..<nums.count {
                if nums[end] < min {
                    min = nums[end]
                }
                if nums[end] > max {
                    max = nums[end]
                }
                sum += max - min
            }
        }

        return sum
    }
}
