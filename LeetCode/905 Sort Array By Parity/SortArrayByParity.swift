//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SortArrayByParity.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/28: Created by szwathub on 2022/4/28
//

class SortArrayByParity {
    func sortArrayByParity(_ nums: [Int]) -> [Int] {
        var answer = [Int](repeating: 0, count: nums.count)
        var left = 0, right = nums.count - 1

        for number in nums {
            if number % 2 == 0 {
                answer[left] = number
                left += 1
            } else {
                answer[right] = number
                right -= 1
            }
        }

        return answer
    }
}
