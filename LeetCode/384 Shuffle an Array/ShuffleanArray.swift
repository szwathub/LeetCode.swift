//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ShuffleanArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/22: Created by szwathub on 2021/11/22
//

class ShuffleanArray {
    var nums: [Int]

    init(_ nums: [Int]) {
        self.nums = nums
    }

    func reset() -> [Int] {
        return nums
    }

    func shuffle() -> [Int] {
        var shuffled = nums
        for index in 0..<shuffled.count {
            let j = Int.random(in: index..<nums.count)
            shuffled.swapAt(index, j)
        }

        return shuffled
    }
}
