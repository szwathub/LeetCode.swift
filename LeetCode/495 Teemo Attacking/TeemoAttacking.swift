//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: TeemoAttacking.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/10: Created by szwathub on 2021/11/10
//

class TeemoAttacking {
    func findPoisonedDuration(_ timeSeries: [Int], _ duration: Int) -> Int {
        var answer = 0
        var prev = -duration

        for series in timeSeries {
            if series - prev < duration {
                answer += (series - prev)
            } else {
                answer += duration
            }
            prev = series
        }

        return answer
    }
}
