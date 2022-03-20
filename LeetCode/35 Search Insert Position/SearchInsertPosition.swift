//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SearchInsertPosition.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/20: Created by szwathub on 2022/3/20
//

class SearchInsertPosition {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var low = 0, high = nums.count - 1
        var answer = nums.count
        while low <= high {
            let mid = (high - low) / 2 + low
            if nums[mid] >= target {
                answer = mid
                high = mid - 1
            } else {
                low = mid + 1
            }
        }

        return answer
    }
}
