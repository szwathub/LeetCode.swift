//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DesignSkiplist.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/7/26: Created by szwathub on 2022/7/26
//

import Structure

class DesignSkiplist {

    private var skip: SkipList<Int>

    init() {
        skip = .init(Int.min)
    }

    func search(_ target: Int) -> Bool {
        return skip.search(target)
    }

    func add(_ num: Int) {
        skip.add(num)
    }

    func erase(_ num: Int) -> Bool {
        return skip.erase(num)
    }
}
