//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SortColors.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/9: Created by szwathub on 2022/1/9
//

class SortColors {
    func sortColors(_ nums: inout [Int]) {
        var p0 = 0, p1 = 0

        for index in 0..<nums.count {
            if nums[index] == 1 {
                nums.swapAt(index, p1)
                p1 += 1
            } else if nums[index] == 0 {
                nums.swapAt(index, p0)

                if p0 < p1 {
                    nums.swapAt(index, p1)
                }

                p0 += 1
                p1 += 1
            }
        }
    }
}
