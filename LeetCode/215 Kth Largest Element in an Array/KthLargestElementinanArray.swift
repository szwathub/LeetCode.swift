//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KthLargestElementinanArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

import Structure

class KthLargestElementinanArray {
    func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
        var queue = PriorityQueue<Int>(sort: >)

        for num in nums {
            queue.enqueue(num)
        }

        var answer = 0
        for _ in 0..<k {
            answer = queue.dequeue()!
        }

        return answer
    }
}
