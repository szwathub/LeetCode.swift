//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SquaresofaSortedArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/20: Created by szwathub on 2022/3/20
//

class SquaresofaSortedArray {
    /// Time Complexity: O(n), Space Complexity: O(1)
    func sortedSquares(_ nums: [Int]) -> [Int] {
        var left = 0, right = nums.count - 1
        var answer = [Int]()

        while left <= right {
            if nums[right] * nums[right] >= nums[left] * nums[left] {
                answer.append(nums[right] * nums[right])
                right -= 1
            } else {
                answer.append(nums[left] * nums[left])
                left += 1
            }
        }

        return answer.reversed()
    }
}
