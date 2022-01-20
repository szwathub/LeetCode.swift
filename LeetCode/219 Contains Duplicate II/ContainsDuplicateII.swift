//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ContainsDuplicateII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/19: Created by szwathub on 2022/1/19
//

class ContainsDuplicateII {
    func containsNearbyDuplicate(_ nums: [Int], _ k: Int) -> Bool {
        var map = [Int: Int]()

        for (index, number) in nums.enumerated() {
            if map.keys.contains(number) && index - map[number]! <= k {
                return true
            }

            map[number] = index
        }

        return false
    }
}
