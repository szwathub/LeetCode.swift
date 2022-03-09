//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SmallestRotationwithHighestScore.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/9: Created by szwathub on 2022/3/9
//

class SmallestRotationwithHighestScore {
    func bestRotation(_ nums: [Int]) -> Int {
        let count = nums.count
        var move = [Int](repeating: 0, count: count)

        for index in 0..<nums.count {
            if nums[index] <= index {
                move[0] += 1
                move[(index - nums[index] + 1) % count] -= 1
                move[(index + 1) % count] += 1
            } else {
                move[(index + 1) % count] += 1
                move[(count - (nums[index] - index) + 1) % count] -= 1
            }
        }

        var score = 0
        var max = 0
        var answer = 0
        for k in 0..<count {
            score += move[k]
            if score > max {
                max = score
                answer = k
            }
        }

        return answer
    }
}
