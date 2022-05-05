//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SubarrayProductLessThanK.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/5: Created by szwathub on 2022/5/5
//

class SubarrayProductLessThanK {
    func numSubarrayProductLessThanK(_ nums: [Int], _ k: Int) -> Int {
        var start = 0
        var product = 1
        var answer = 0

        for end in 0..<nums.count {
            product *= nums[end]

            while start <= end && product >= k {
                product /= nums[start]
                start += 1
            }

            answer += end - start + 1
        }

        return answer
    }
}
