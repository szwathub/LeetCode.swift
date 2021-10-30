//
//  File name: HouseRobber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/31: Created by szwathub on 2021/10/31
//

import Foundation

class HouseRobber {
    func rob(_ nums: [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.first ?? 0
        }

        var prev = nums[0]
        var current = max(nums[0], nums[1])
        for index in 2..<nums.count {
            (current, prev) = (max(prev + nums[index], current), current)
        }

        return current
    }
}
