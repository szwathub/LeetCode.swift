//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestUncommonSubsequenceI.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/28: Created by szwathub on 2022/3/28
//

class LongestUncommonSubsequenceI {
    func findLUSlength(_ a: String, _ b: String) -> Int {
        guard a != b else {
            return -1
        }

        return max(a.count, b.count)
    }
}
