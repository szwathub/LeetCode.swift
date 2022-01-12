//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LargestNumberAtLeastTwiceofOthers.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/13: Created by szwathub on 2022/1/13
//

class LargestNumberAtLeastTwiceofOthers {
    func dominantIndex(_ nums: [Int]) -> Int {
        var first  = -1
        var second = -1
        var answer = -1

        for (index, number) in nums.enumerated() {
            if number > first {
                second = first
                first  = number
                answer = index
            } else if number > second {
                second = number
            }
        }

        return first >= second * 2 ? answer : -1
    }
}
