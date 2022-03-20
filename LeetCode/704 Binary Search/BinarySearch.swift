//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinarySearch.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/20: Created by szwathub on 2022/3/20
//

class BinarySearch {
    /// Time Complexity: O(logn), Space Complexity: O(1)
    func search(_ nums: [Int], _ target: Int) -> Int {
        var low = 0, high = nums.count - 1
        while low <= high {
            let mid = (high - low) / 2 + low
            if nums[mid] == target {
                return mid
            } else if nums[mid] > target {
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return -1
    }
}
