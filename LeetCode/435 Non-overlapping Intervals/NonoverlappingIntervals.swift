//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NonoverlappingIntervals.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/11: Created by szwathub on 2022/1/11
//

class NonoverlappingIntervals {
    func eraseOverlapIntervals(_ intervals: [[Int]]) -> Int {
        let intervals = intervals.sorted { $0[1] < $1[1] }

        var right  = Int.min
        var remainder = 0
        for interval in intervals where interval[0] >= right {
            remainder += 1
            right = interval[1]
        }

        return intervals.count - remainder
    }
}
