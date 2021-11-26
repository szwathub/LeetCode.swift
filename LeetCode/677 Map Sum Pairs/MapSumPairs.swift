//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MapSumPairs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/14: Created by szwathub on 2021/11/14
//

import Foundation

class MapSum {

    var dict: [String: Int]

    init() {
        self.dict = [String: Int]()
    }

    func insert(_ key: String, _ val: Int) {
        dict.updateValue(val, forKey: key)
    }

    func sum(_ prefix: String) -> Int {
        var sum = 0
        for (key, value) in dict where key.hasPrefix(prefix) {
            sum += value
        }

        return sum
    }
}
