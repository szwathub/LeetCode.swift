//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ContainerWithMostWater.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/26: Created by szwathub on 2021/10/26
//

class ContainerWithMostWater {
    /// Time Complexity: O(n), Space Complexity: O(1)
    func maxArea(_ height: [Int]) -> Int {
        var left = 0
        var right = height.count - 1
        var ans = 0

        while left < right {
            if height[left] < height[right] {
                ans = max(ans, height[left] * (right - left))
                left += 1
            } else {
                ans = max(ans, height[right] * (right - left))
                right -= 1
            }
        }

        return ans
    }
}
