//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: RansomNote.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/14: Created by szwathub on 2021/11/14
//

class RansomNote {
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        guard magazine.count >= ransomNote.count else {
            return false
        }

        var dict = [Character: Int]()
        for character in magazine {
            dict[character, default: 0] += 1
        }
        for character in ransomNote {
            if let value = dict[character], value > 0 {
                dict[character] = value - 1
            } else {
                return false
            }
        }

        return true
    }
}
