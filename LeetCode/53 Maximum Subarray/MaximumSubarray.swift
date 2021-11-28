//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MaximumSubarray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/26: Created by szwathub on 2021/10/26
//

class MaximumSubarray {
    func maxSubArray(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }

        var ans = Int.min
        var prev = 0

        for num in nums {
            prev = max(prev + num, num)
            ans = max(prev, ans)
        }

        return ans
    }

    // Divide and Conquer
    struct Status {
        var lSum: Int
        var rSum: Int
        var mSum: Int
        var iSum: Int
    }

    func pushUp(_ l: Status, _ r: Status) -> Status {
        let iSum = l.iSum + r.iSum
        let lSum = max(l.lSum, l.iSum + r.lSum)
        let rSum = max(r.rSum, r.iSum + l.rSum)
        let mSum = max(max(l.mSum, r.mSum), l.rSum + r.lSum)

        return .init(lSum: lSum, rSum: rSum, mSum: mSum, iSum: iSum)
    }

    func get(_ nums: [Int], _ left: Int, _ right: Int) -> Status {
        if left == right {
            return .init(lSum: nums[left], rSum: nums[left], mSum: nums[left], iSum: nums[left])
        }

        let mid = (left + right) >> 1
        let lStatus = get(nums, left, mid)
        let rStatus = get(nums, mid + 1, right)

        return pushUp(lStatus, rStatus)
    }

    func maxSubArrayII(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }

        return get(nums, 0, nums.count - 1).mSum
    }
}
