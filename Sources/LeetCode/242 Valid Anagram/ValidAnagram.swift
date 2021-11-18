//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ValidAnagram.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/14: Created by szwathub on 2021/11/14
//

import Foundation

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }

        var dict = [Character: Int]()
        for (c1, c2) in zip(s, t) {
            dict[c1, default: 0] += 1
            dict[c2, default: 0] -= 1
        }

        return !dict.contains { $1 != 0 }
    }
}
