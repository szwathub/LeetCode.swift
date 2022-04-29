//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SmallestRangeI.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/30: Created by szwathub on 2022/4/30
//

class SmallestRangeI {
    func smallestRangeI(_ nums: [Int], _ k: Int) -> Int {
        return max(0, nums.max()! - nums.min()! - 2 * k)
    }
}
