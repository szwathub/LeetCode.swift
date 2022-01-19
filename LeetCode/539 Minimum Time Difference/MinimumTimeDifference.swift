//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumTimeDifference.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/18: Created by szwathub on 2022/1/18
//

class MinimumTimeDifference {
    func findMinDifference(_ timePoints: [String]) -> Int {
        let list = timePoints.sorted()

        var answer = Int.max
        let t0 = getMinutes(list[0])
        var prev = t0

        for (index, time) in list.enumerated() where index > 0 {
            let minutes = getMinutes(time)
            answer = min(answer, minutes - prev)
            prev = minutes
        }
        answer = min(answer, t0 + 1440 - prev)

        return answer
    }

    private func getMinutes(_ time: String) -> Int {
        let split = time.split(separator: ":")

        return Int(split[0])! * 60 + Int(split[1])!
    }
}
