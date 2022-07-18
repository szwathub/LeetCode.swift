//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: WiggleSortII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/331
//  History:
//      2022/7/17: Created by szwathub on 2022/7/17
//

class WiggleSortII {
    func wiggleSort(_ nums: inout [Int]) {
        let sorted = nums.sorted()
        var j = (nums.count + 1) >> 1 - 1
        var k = nums.count - 1

        for i in stride(from: 0, to: nums.count, by: 2) {
            nums[i] = sorted[j]
            if i + 1 < nums.count {
                nums[i + 1] = sorted[k]
            }
            j -= 1
            k -= 1
        }
    }
}
