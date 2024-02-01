//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: NumsGame.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/5TxKeK/
//  History:
//      2024/2/1: Created by szwathub on 2024/2/1
//

import Structure

class NumsGame {

    func numsGame(_ nums: [Int]) -> [Int] {
        var ans: [Int] = [Int](repeating: 0, count: nums.count)

        let MOD = 1_000_000_007

        var lowerHeap = Heap<Int>(sort: >) // 大根堆, 维护较小的一半
        var upperHeap = Heap<Int>(sort: <) // 小根堆, 维护较大的一半
        var lowerSum = 0, upperSum = 0

        for (index, num) in nums.enumerated() {
            var x = num - index
            if index % 2 == 0 { // 前缀长度是奇数
                if let top = lowerHeap.peek(), x < top {
                    lowerSum -= top - x
                    lowerHeap.insert(x)
                    lowerHeap.remove()
                    x = top
                }
                upperSum += x
                upperHeap.insert(x)
                ans[index] = (upperSum - (upperHeap.peek() ?? 0) - lowerSum) % MOD
            } else {
                if let top = upperHeap.peek(), x > top {
                    upperSum += x - top
                    upperHeap.insert(x)
                    upperHeap.remove()
                    x = top
                }

                lowerSum += x
                lowerHeap.insert(x)
                ans[index] = (upperSum - lowerSum) % MOD
            }
        }

        return ans
    }
}
