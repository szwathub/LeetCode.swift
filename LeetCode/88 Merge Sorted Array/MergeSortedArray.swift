//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MergeSortedArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/27: Created by szwathub on 2021/10/27
//

class MergeSortedArray {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var pm = m - 1
        var pn = n - 1
        var tail = m + n - 1
        var current = 0

        while pn >= 0 {
            if pm == -1 || nums1[pm] < nums2[pn] {
                current = nums2[pn]
                pn -= 1
            } else {
                current = nums1[pm]
                pm -= 1
            }

            nums1[tail] = current
            tail -= 1
        }
    }
}
