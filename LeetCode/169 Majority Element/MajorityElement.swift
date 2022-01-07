//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MajorityElement.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/8: Created by szwathub on 2022/1/8
//

class MajorityElement {
    func majorityElement(_ nums: [Int]) -> Int {
        var count = 0
        return nums.reduce(into: nums[0]) { partial, number in
            if count == 0 {
                partial = number
                count += 1
            } else if partial == number {
                count += 1
            } else {
                count -= 1
            }
        }
    }
}
