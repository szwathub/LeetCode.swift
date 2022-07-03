//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NextGreaterElementIII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/314
//  History:
//      2022/7/3: Created by szwathub on 2022/7/3
//

class NextGreaterElementIII {
    func nextGreaterElement(_ n: Int) -> Int {
        var nums = String(n).compactMap { Int(String($0)) }

        var index = nums.count - 2
        while index >= 0 && nums[index] >= nums[index + 1] {
            index -= 1
        }

        guard index >= 0 else {
            return -1
        }

        var j = nums.count - 1
        while j >= 0 && nums[index] >= nums[j] {
            j -= 1
        }
        nums.swapAt(index, j)
        let sorted = nums[index + 1..<nums.count].sorted(by: <)
        for i in 0..<sorted.count {
            nums[index + 1 + i] = sorted[i]
        }

        let ans = nums.reduce(0, { partial, number in
            return partial * 10 + number
        })

        return ans > Int32.max ? -1 : ans
    }
}
