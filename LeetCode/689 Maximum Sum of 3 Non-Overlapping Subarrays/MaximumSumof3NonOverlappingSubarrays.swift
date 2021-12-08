//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MaximumSumof3NonOverlappingSubarrays.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/8: Created by szwathub on 2021/12/8
//

class MaximumSumof3NonOverlappingSubarrays {
    func maxSumOfThreeSubarrays(_ nums: [Int], _ k: Int) -> [Int] {
        var answer = [Int]()
        var sum1 = 0, maxSum1 = 0, maxSum1Index = 0
        var sum2 = 0, maxSum12 = 0, maxSum12Index = (0, 0)
        var sum3 = 0, maxTotal = 0

        for index in k * 2..<nums.count {
            sum1 += nums[index - k * 2]
            sum2 += nums[index - k]
            sum3 += nums[index]

            if index >= k * 3 - 1 {
                if sum1 > maxSum1 {
                    maxSum1 = sum1
                    maxSum1Index = index - k * 3 + 1
                }
                if sum2 + maxSum1 > maxSum12 {
                    maxSum12 = maxSum1 + sum2
                    maxSum12Index = (maxSum1Index, index - k * 2 + 1)
                }
                if sum3 + maxSum12 > maxTotal {
                    maxTotal = maxSum12 + sum3
                    answer = [maxSum12Index.0, maxSum12Index.1, index - k + 1]
                }

                sum1 -= nums[index - k * 3 + 1]
                sum2 -= nums[index - k * 2 + 1]
                sum3 -= nums[index - k + 1]
            }
        }

        return answer
    }
}
