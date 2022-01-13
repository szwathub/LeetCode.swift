//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindKPairswithSmallestSums.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/14: Created by szwathub on 2022/1/14
//

import Structure

class FindKPairswithSmallestSums {
    func kSmallestPairs(_ nums1: [Int], _ nums2: [Int], _ k: Int) -> [[Int]] {
        var queue = PriorityQueue<(Int, Int)>.init { first, second in
            return nums1[first.0] + nums2[first.1] < nums1[second.0] + nums2[second.1]
        }
        var answer = [[Int]]()

        for index in 0..<min(nums1.count, k) {
            queue.enqueue((index, 0))
        }

        var reminder = k
        while reminder > 0 && !queue.isEmpty {
            let pair = queue.dequeue()!
            answer.append([nums1[pair.0], nums2[pair.1]])

            if pair.1 + 1 < nums2.count {
                queue.enqueue((pair.0, pair.1 + 1))
            }

            reminder -= 1
        }

        return answer
    }
}
