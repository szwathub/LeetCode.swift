//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: GroupAnagrams.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/15: Created by szwathub on 2022/3/15
//

class GroupAnagrams {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var map = [String: [String]]()

        for str in strs {
            let key = String(str.sorted())
            map[key, default: []].append(str)
        }

        return Array(map.values)
    }
}
