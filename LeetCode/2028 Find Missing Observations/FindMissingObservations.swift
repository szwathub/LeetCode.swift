//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindMissingObservations.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/27: Created by szwathub on 2022/3/27
//

class FindMissingObservations {
    func missingRolls(_ rolls: [Int], _ mean: Int, _ n: Int) -> [Int] {
        let sum = mean * (rolls.count + n) - rolls.reduce(0, +)
        let average = sum / n
        guard sum <= 6 * n, sum >= 1 * n else {
            return []
        }
        var answer = [Int](repeating: average, count: n)
        let reminder = sum - average * n
        for index in 0..<reminder {
            answer[index] += 1
        }

        return answer
    }
}
