//
//  File name: MissingNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/6: Created by szwathub on 2021/11/6
//

import Foundation

class MissingNumber {
    func missingNumber(_ nums: [Int]) -> Int {
        var xor = 0
        for index in 1...nums.count {
            xor ^= index ^ nums[index - 1]
        }

        return xor
    }
}
