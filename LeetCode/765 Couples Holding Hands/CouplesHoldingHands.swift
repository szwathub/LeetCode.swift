//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CouplesHoldingHands.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

import Structure

class CouplesHoldingHands {
    func minSwapsCouples(_ row: [Int]) -> Int {
        let N = row.count / 2
        let union = UnionFind(N)
        for index in stride(from: 0, to: row.count, by: 2) {
            union.union(row[index] / 2, row[index + 1] / 2)
        }

        return N - union.setCount
    }
}
