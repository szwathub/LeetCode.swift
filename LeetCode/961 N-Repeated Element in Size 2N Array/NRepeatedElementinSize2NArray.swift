//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NRepeatedElementinSize2NArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/22: Created by szwathub on 2022/5/22
//

class NRepeatedElementinSize2NArray {
    func repeatedNTimes(_ nums: [Int]) -> Int {
        var ans = -1
        for (index, number) in nums.enumerated() {
            if index - 1 >= 0 && nums[index - 1] == number {
                ans = number
                break
            }
            if index - 2 >= 0 && nums[index - 2] == number {
                ans = number
                break
            }
            if index - 3 >= 0 && nums[index - 3] == number {
                ans = number
                break
            }
        }

        return ans
    }
}
