//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MaximizeSumOfArrayAfterKNegations.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/3: Created by szwathub on 2022/1/3
//

import Structure

class MaximizeSumOfArrayAfterKNegations {
    func largestSumAfterKNegations(_ nums: [Int], _ k: Int) -> Int {
        var queue = PriorityQueue<Int>.init { nums[$0] < nums[$1] }
        var zero  = false
        var nums  = nums
        var k     = k
        var idx   = 0

        for (index, num) in nums.enumerated() {
            if num < 0 {
                queue.enqueue(index)
            }
            if num == 0 {
                zero = true
            }
            if abs(num) < abs(nums[idx]) {
                idx = index
            }
        }

        if k <= queue.count {
            while k > 0 {
                nums[queue.peek()!] = -nums[queue.dequeue()!]
                k -= 1
            }
        } else {
            while !queue.isEmpty && k > 0 {
                nums[queue.peek()!] = -nums[queue.dequeue()!]
                k -= 1
            }
            if !zero && k % 2 != 0 {
                nums[idx] = -nums[idx]
            }
        }

        return nums.reduce(0, +)
    }
}
