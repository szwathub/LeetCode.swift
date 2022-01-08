//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: 3Sum.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/8: Created by szwathub on 2022/1/8
//

class ThreeSum {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        guard nums.count >= 3 else {
            return []
        }

        let nums = nums.sorted()
        var answer = [[Int]]()
        for first in 0..<nums.count {
            guard first == 0 || nums[first] != nums[first - 1] else {
                continue
            }

            var third = nums.count - 1
            for second in (first + 1)..<nums.count {
                guard second == first + 1 || nums[second] != nums[second - 1] else {
                    continue
                }

                while second < third && nums[first] + nums[second] + nums[third] > 0 {
                    third -= 1
                }

                if second == third {
                    break
                }

                if nums[first] + nums[second] + nums[third] == 0 {
                    answer.append([nums[first], nums[second], nums[third]])
                }
            }
        }

        return answer
    }
}
