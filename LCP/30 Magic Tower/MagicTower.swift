//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: MagicTower.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/p0NxJO
//  History:
//      2024/2/6: Created by szwathub on 2024/2/6
//

import Structure

class MagicTower {
    func magicTower(_ nums: [Int]) -> Int {
        guard nums.reduce(0, +) >= 0 else { return -1 }
        var queue = PriorityQueue<Int>(sort: <)
        var hp = 1, ans = 0

        for num in nums {
            if num < 0 {
                queue.enqueue(num)
            }
            hp += num
            if hp <= 0, let top = queue.dequeue() {
                ans += 1
                hp -= top
            }
        }

        return ans
    }
}
