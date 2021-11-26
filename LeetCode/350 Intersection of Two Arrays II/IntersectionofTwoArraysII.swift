//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: IntersectionofTwoArraysII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/27: Created by szwathub on 2021/10/27
//

import Foundation

class IntersectionofTwoArraysII {
    func intersect(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        guard nums1.count <= nums2.count else {
            return intersect(nums2, nums1)
        }

        var map = [Int: Int]()
        for number in nums1 {
            let count = (map[number] ?? 0) + 1
            map[number] = count
        }

        var ans = [Int]()
        for number in nums2 {
            if let count = map[number] {
                ans.append(number)
                if count - 1 > 0 {
                    map[number] = count - 1
                } else {
                    map.removeValue(forKey: number)
                }
            }
        }

        return ans
    }
}
