//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: JumpGameVI.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/jump-game-vi/description/
//  History:
//      2024/2/5: Created by szwathub on 2024/2/5
//

class JumpGameVI {
    func maxResult(_ nums: [Int], _ k: Int) -> Int {
        var dp = [Int](repeating: 0, count: nums.count)
        var queue: [Int] = []

        dp[0] = nums[0]
        queue.append(0)

        for index in 1..<nums.count {
            while let first = queue.first, first < index - k {
                queue.remove(at: 0)
            }

            dp[index] = dp[queue[0]] + nums[index]
            while let last = queue.last, dp[last] <= dp[index] {
                queue.removeLast()
            }
            queue.append(index)
        }

        return dp[nums.count - 1]
    }
}
