//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SingleNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/8: Created by szwathub on 2022/1/8
//

class SingleNumber {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(into: 0) { partial, y in
            partial ^= y
        }
    }
}
