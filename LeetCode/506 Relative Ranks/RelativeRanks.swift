//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: RelativeRanks.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/2: Created by szwathub on 2021/12/2
//

class RelativeRanks {
    func findRelativeRanks(_ score: [Int]) -> [String] {
        var pairs = [Int: String]()
        let list = score.sorted { $0 > $1 }
        let medal = ["Gold Medal", "Silver Medal", "Bronze Medal"]

        for (index, value) in list.enumerated() {
            if index < 3 {
                pairs[value] = medal[index]
            } else {
                pairs[value] = "\(index + 1)"
            }
        }

        return score.compactMap { pairs[$0] }
    }
}
