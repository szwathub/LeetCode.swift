//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: TrappingRainWater.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/3: Created by szwathub on 2021/11/3
//

import Foundation

class TrappingRainWater {
    func trap(_ height: [Int]) -> Int {
        var left = 0, right = height.count - 1
        var maxleft = 0, maxright = 0

        var answer = 0
        while left < right {
            if height[left] < height[right] {
                maxleft = max(maxleft, height[left])
                answer += maxleft - height[left]
                left += 1
            } else {
                maxright = max(maxright, height[right])
                answer += maxright - height[right]
                right -= 1
            }
        }

        return answer
    }
}
