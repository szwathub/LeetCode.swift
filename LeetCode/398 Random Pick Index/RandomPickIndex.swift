//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RandomPickIndex.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/25: Created by szwathub on 2022/4/25
//

class RandomPickIndex {

    var nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }

    func pick(_ target: Int) -> Int {
        var answer = 0, count = 0
        for (index, number) in nums.enumerated() where number == target {
            count += 1
            if Int.random(in: 0..<count) == 0 {
                answer = index
            }
        }

        return answer
    }
}
