//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KClosestPointstoOrigin.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class KClosestPointstoOrigin {
    func kClosest(_ points: [[Int]], _ k: Int) -> [[Int]] {
        var queue = PriorityQueue<[Int]> { a, b in
            a[0] * a[0] + a[1] * a[1] < b[0] * b[0] + b[1] * b[1]
        }
        for point in points {
            queue.enqueue(point)
        }

        var answer = [[Int]]()
        while let point = queue.dequeue() {
            answer.append(point)
            if answer.count == k {
                break
            }
        }

        return answer
    }
}
