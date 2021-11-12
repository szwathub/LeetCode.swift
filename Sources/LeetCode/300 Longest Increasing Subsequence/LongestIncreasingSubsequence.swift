//
//  File name: LongestIncreasingSubsequence.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/13: Created by szwathub on 2021/11/13
//

import Foundation

class LongestIncreasingSubsequence {
    func lengthOfLIS(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }

        // dp[i] = max(dp[j]) + 1, 其中0 ≤ j < i 且num[j] < num[i]
        var dp = [Int](repeating: 1, count: nums.count)
        var answer = 0
        for index in 0..<nums.count {
            for j in 0..<index where nums[j] < nums[index] {
                dp[index] = max(dp[index], dp[j] + 1)
            }
            answer = max(dp[index], answer)
        }

        return answer
    }

    func lengthOfLISII(_ nums: [Int]) -> Int {
        guard !nums.isEmpty else {
            return 0
        }

        var len = 1
        var min = [Int](repeating: 0, count: nums.count + 1)
        min[len] = nums[0]
        for index in 1..<nums.count {
            if nums[index] > min[len] {
                len += 1
                min[len] = nums[index]
            } else {
                var l = 1, r = len, pos = 0
                while l <= r {
                    let mid = (l + r) >> 1
                    if min[mid] < nums[index] {
                        pos = mid
                        l = mid + 1
                    } else {
                        r = mid - 1
                    }
                }
                min[pos + 1] = nums[index]
            }
        }

        return len
    }
}
