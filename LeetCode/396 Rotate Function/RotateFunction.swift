//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RotateFunction.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/22: Created by szwathub on 2022/4/22
//

class RotateFunction {
    func maxRotateFunction(_ nums: [Int]) -> Int {
        var function = 0, n = nums.count, sum = nums.reduce(0, +)

        for (index, number) in nums.enumerated() {
            function += index * number
        }
        var answer = function

        for index in stride(from: n - 1, through: 0, by: -1) {
            function += sum - n * nums[index]
            answer = max(answer, function)
        }

        return answer
    }
}
