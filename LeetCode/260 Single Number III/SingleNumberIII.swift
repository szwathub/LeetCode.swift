//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: SingleNumberIII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/30: Created by szwathub on 2021/10/30
//

class SingleNumberIII {
    func singleNumber(_ nums: [Int]) -> [Int] {
        var xor = 0
        for num in nums {
            xor ^= num
        }

        let mask = xor & (-xor)

        var a = 0
        for num in nums where num & mask == 0 {
            a ^= num
        }

        return [a, a ^ xor]
    }
}
