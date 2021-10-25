//
//  File name: TwoSum.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/1/9: Created by szwathub on 2021/1/9
//

import Foundation

class TwoSum {
    /// Time Complexity: O(n), Space Complexity: O(n)
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()

        for (index, num) in nums.enumerated() {
            if let lastIndex = dict[target - num] {
                return [lastIndex, index]
            }

            dict[num] = index
        }

        return []
    }
}
