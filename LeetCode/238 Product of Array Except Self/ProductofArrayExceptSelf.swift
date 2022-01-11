//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ProductofArrayExceptSelf.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/12: Created by szwathub on 2022/1/12
//

class ProductofArrayExceptSelf {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var answer = [Int](repeating: 0, count: nums.count)

        for index in 0..<nums.count {
            if index == 0 {
                answer[index] = 1
            } else {
                answer[index] = answer[index - 1] * nums[index - 1]
            }
        }

        var R = 1
        for index in stride(from: nums.count - 1, through: 0, by: -1) {
            answer[index] = answer[index] * R
            R *= nums[index]
        }

        return answer
    }
}
