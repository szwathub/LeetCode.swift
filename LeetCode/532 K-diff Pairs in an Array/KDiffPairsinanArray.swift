//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KdiffPairsinanArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/16: Created by szwathub on 2022/6/16
//

class KDiffPairsinanArray {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        var visited = Set<Int>()
        var ans = Set<Int>()
        for num in nums {
            if visited.contains(num - k) {
                ans.insert(num - k)
            }
            if visited.contains(num + k) {
                ans.insert(num)
            }
            visited.insert(num)
        }

        return ans.count
    }
}
