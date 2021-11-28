//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: BuddyStrings.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/28: Created by szwathub on 2021/11/28
//

class BuddyStrings {
    func buddyStrings(_ s: String, _ goal: String) -> Bool {
        guard s.count == goal.count else {
            return false
        }

        var diff = [[Character]]()
        for (u, v) in zip(s, goal) where u != v {
            diff.append([u, v])
        }

        if diff.count == 0 {
            return s.count > Set(s).count
        }
        if diff.count == 2 && diff[0].reversed() == diff[1] {
            return true
        }

        return false
    }
}
