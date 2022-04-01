//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ArrayofDoubledPairs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/1: Created by szwathub on 2022/4/1
//

class ArrayofDoubledPairs {
    func canReorderDoubled(_ arr: [Int]) -> Bool {
        var map = [Int: Int]()
        for number in arr where number != 0 {
            map[number, default: 0] += 1
        }

        let keys = map.keys.sorted { abs($0) < abs($1) }
        for number in keys {
            if map[2 * number, default: 0] < map[number]! {
                return false
            }

            map[2 * number, default: 0] -= map[number]!
        }

        return true
    }
}
