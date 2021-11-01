//
//  File name: DistributeCandies.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/1: Created by szwathub on 2021/11/1
//

import Foundation

class DistributeCandies {
    func distributeCandies(_ candyType: [Int]) -> Int {
        return min(Set(candyType).count, candyType.count / 2)
    }
}
