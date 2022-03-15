//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CountNumberofMaximumBitwiseORSubsets.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/15: Created by szwathub on 2022/3/15
//

class CountNumberofMaximumBitwiseORSubsets {
    func countMaxOrSubsets(_ nums: [Int]) -> Int {
        let mask = 1 << nums.count
        var max = 0
        var answer = 0

        for index in 0..<mask {
            var current = 0

            for i in 0..<nums.count where (index >> i) & 1 == 1 {
                current |= nums[i]
            }

            if current > max {
                max = current
                answer = 1
            } else if current == max {
                answer += 1
            }
        }

        return answer
    }
}
