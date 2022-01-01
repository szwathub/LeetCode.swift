//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: HandofStraights.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/1: Created by szwathub on 2022/1/1
//

class HandofStraights {
    func isNStraightHand(_ hand: [Int], _ groupSize: Int) -> Bool {
        guard hand.count % groupSize == 0 else {
            return false
        }

        let sorted = hand.sorted()
        var map = [Int: Int]()
        for item in sorted {
            map[item, default: 0] += 1
        }

        for item in sorted where map.contains(where: { $0.key == item }) {

            for index in 0..<groupSize {
                let number = item + index
                if !map.contains(where: { $0.key == number }) {
                    return false
                }

                map[number]! -= 1
                if map[number] == 0 {
                    map.removeValue(forKey: number)
                }
            }
        }

        return true
    }
}
