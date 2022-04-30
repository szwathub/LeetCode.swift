//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Subsets.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/30: Created by szwathub on 2022/4/30
//

class Subsets {
    func subsets(_ nums: [Int]) -> [[Int]] {
        var answer: [[Int]] = [[]]

        helper(&answer, [], 0, nums)

        return answer
    }

    private func helper(_ answer: inout [[Int]], _ subset: [Int], _ begin: Int, _ nums: [Int]) {
        guard begin != nums.count else {
            return
        }

        let item = nums[begin]
        helper(&answer, subset + [item], begin + 1, nums)
        answer.append(subset + [item])

        helper(&answer, subset, begin + 1, nums)
    }
}
