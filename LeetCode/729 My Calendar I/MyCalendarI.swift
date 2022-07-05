//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MyCalendarI.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/317
//  History:
//      2022/7/5: Created by szwathub on 2022/7/5
//

class MyCalendarI {

    var booked: [(Int, Int)]

    init() {
        booked = []
    }

    func book(_ start: Int, _ end: Int) -> Bool {
        for (l, r) in booked where l < end && start < r {
            return false
        }

        booked.append((start, end))
        return true
    }
}
