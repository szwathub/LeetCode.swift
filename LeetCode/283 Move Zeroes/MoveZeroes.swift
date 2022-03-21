//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MoveZeroes.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/21: Created by szwathub on 2022/3/21
//

class MoveZeroes {
    func moveZeroes(_ nums: inout [Int]) {
        var index = 0
        for number in nums where number != 0 {
            nums[index] = number
            index += 1
        }

        for i in index..<nums.count {
            nums[i] = 0
        }
    }
}
