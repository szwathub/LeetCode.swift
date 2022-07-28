//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RankTransformofanArray.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/345
//  History:
//      2022/7/28: Created by szwathub on 2022/7/28
//

class RankTransformofanArray {
    func arrayRankTransform(_ arr: [Int]) -> [Int] {
        let sorted = arr.sorted()
        var map = [Int: Int]()

        var index = 1
        for value in sorted {
            if !map.keys.contains(value) {
                map[value] = index
                index += 1
            }
        }

        var ans = [Int](repeating: 0, count: arr.count)
        for index in 0..<arr.count {
            if let after = map[arr[index]] {
                ans[index] = after
            }
        }

        return ans
    }
}
