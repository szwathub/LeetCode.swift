//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: SelfCrossing.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/29: Created by szwathub on 2021/10/29
//

import Foundation

class SelfCrossing {
    func isSelfCrossing(_ distance: [Int]) -> Bool {
        guard distance.count >= 4 else {
            return false
        }

        for index in 3..<distance.count {
            if distance[index] >= distance[index - 2] && distance[index - 1] <= distance[index - 3] {
                return true
            }
            if index >= 4 && distance[index - 1] == distance[index - 3]
                && distance[index] + distance[index - 4] >= distance[index - 2] {

                return true
            }
            if index >= 5 && distance[index - 1] <= distance[index - 3]
                && distance[index - 2] > distance[index - 4]
                && distance[index] + distance[index - 4] >= distance[index - 2]
                && distance[index - 1] + distance[index - 5] >= distance[index - 3] {

                return true
            }
        }

        return false
    }
}
