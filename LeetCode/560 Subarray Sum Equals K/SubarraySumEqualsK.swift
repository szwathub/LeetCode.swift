//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SubarraySumEqualsK.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/12: Created by szwathub on 2022/1/12
//

class SubarraySumEqualsK {
    func subarraySum(_ nums: [Int], _ k: Int) -> Int {
        var map = [Int: Int]() // prefix sum : count
        map.updateValue(1, forKey: 0)
        var prefix = 0
        var answer = 0

        for num in nums {
            prefix += num

            answer += map[prefix - k, default: 0]
            map[prefix, default: 0] += 1
        }

        return answer
    }
}
