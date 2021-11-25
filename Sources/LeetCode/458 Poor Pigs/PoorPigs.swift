//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: PoorPigs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/25: Created by szwathub on 2021/11/25
//

import Foundation

class PoorPigs {
    func poorPigs(_ buckets: Int, _ minutesToDie: Int, _ minutesToTest: Int) -> Int {
        let state = minutesToTest / minutesToDie + 1
        let pigs = Int(ceil(log(Double(buckets)) / log(Double(state))))

        return pigs
    }
}
