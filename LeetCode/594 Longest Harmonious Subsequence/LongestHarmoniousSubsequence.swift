//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: LongestHarmoniousSubsequence.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/20: Created by szwathub on 2021/11/20
//

class LongestHarmoniousSubsequence {
    func findLHS(_ nums: [Int]) -> Int {
        var count = [Int: Int]()
        for num in nums {
            count[num, default: 0] += 1
        }

        var answer = 0
        for (key, value) in count {
            if let next = count[key + 1] {
                answer = max(answer, value + next)
            }
        }

        return answer
    }
}
