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

import Foundation

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
