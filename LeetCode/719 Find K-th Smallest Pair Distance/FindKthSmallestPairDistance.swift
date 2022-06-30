//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindKthSmallestPairDistance.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/308
//  History:
//      2022/6/30: Created by szwathub on 2022/6/30
//

class FindKthSmallestPairDistance {
    func smallestDistancePair(_ nums: [Int], _ k: Int) -> Int {
        let sorted = nums.sorted()

        var start = 0
        var end = sorted[sorted.count - 1] - sorted[0]

        while start < end {
            let mid = (start + end) >> 1
            let count = countLessAndEqual(sorted, mid)

            if count < k {
                start = mid + 1
            } else {
                end = mid
            }
        }

        return start
    }

    private func countLessAndEqual(_ nums: [Int], _ mid: Int) -> Int {
        var count = 0
        for end in 0..<nums.count {
            var start = 0
            while nums[end] - nums[start] > mid {
                start += 1
            }

            count += end - start
        }

        return count
    }
}
