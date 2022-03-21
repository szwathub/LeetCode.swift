//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RotateArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/21: Created by szwathub on 2022/3/21
//

class RotateArray {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let k = k % nums.count
        reverse(&nums, 0, nums.count - 1)
        reverse(&nums, 0, k - 1)
        reverse(&nums, k, nums.count - 1)
    }

    private func reverse(_ nums: inout [Int], _ start: Int, _ end: Int) {
        var start = start, end = end
        while start < end {
            nums.swapAt(start, end)
            start += 1
            end -= 1
        }
    }
}
