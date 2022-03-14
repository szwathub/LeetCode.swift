//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumIndexSumofTwoLists.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/14: Created by szwathub on 2022/3/14
//

class MinimumIndexSumofTwoLists {
    func findRestaurant(_ list1: [String], _ list2: [String]) -> [String] {
        var map = [String: Int]()

        for (index, item) in list1.enumerated() {
            map[item] = index
        }

        var answer = [String]()
        var min = Int.max

        for (index, item) in list2.enumerated() {
            if map.keys.contains(item), let value = map[item] {
                if index + value < min {
                    answer.removeAll()
                    min = index + value
                    answer.append(item)
                } else if index + value == min {
                    answer.append(item)
                }
            }
        }

        return answer
    }
}
