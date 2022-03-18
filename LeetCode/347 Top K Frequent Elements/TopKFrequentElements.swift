//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: TopKFrequentElements.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

import Structure

class TopKFrequentElements {

    public struct Pair {
        var key: Int
        var frequent: Int
    }

    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var map = [Int: Int]()
        for num in nums {
            map[num, default: 0] += 1
        }

        var queue = PriorityQueue<Pair>.init { $0.frequent > $1.frequent }
        for (key, frequent) in map {
            queue.enqueue(Pair(key: key, frequent: frequent))
        }

        var answer = [Int]()
        while answer.count != k {
            let pair = queue.dequeue()!
            answer.append(pair.key)
        }

        return answer
    }
}
