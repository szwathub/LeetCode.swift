//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MergeIntervals.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/9: Created by szwathub on 2022/1/9
//

class MergeIntervals {
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        let intervals = intervals.sorted { $0[0] < $1[0] }

        var answer = [[Int]]()
        for interval in intervals {
            if let last = answer.last {
                if last[1] < interval[0] {
                    answer.append(interval)
                } else {
                    _ = answer.removeLast()
                    answer.append([last[0], max(last[1], interval[1])])
                }
            } else {
                answer.append(interval)
            }
        }

        return answer
    }
}
