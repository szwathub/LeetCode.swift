//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: IncreasingTripletSubsequence.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/12: Created by szwathub on 2022/1/12
//

class IncreasingTripletSubsequence {
    func increasingTriplet(_ nums: [Int]) -> Bool {
        guard nums.count >= 3 else {
            return false
        }

        var first = nums[0]
        var second = Int.max

        for num in nums {
            if num > second {
                return true
            } else if num > first {
                second = num
            } else {
                first = num
            }
        }

        return false
    }
}
