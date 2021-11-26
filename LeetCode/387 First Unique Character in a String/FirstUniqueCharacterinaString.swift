//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FirstUniqueCharacterinaString.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/14: Created by szwathub on 2021/11/14
//

import Foundation

class FirstUniqueCharacterinaString {
    func firstUniqChar(_ s: String) -> Int {
        var dict = [Character: Int]()
        for character in s {
            dict[character, default: 0] += 1
        }

        for (index, character) in s.enumerated() where dict[character] == 1 {
            return index
        }

        return -1
    }
}
