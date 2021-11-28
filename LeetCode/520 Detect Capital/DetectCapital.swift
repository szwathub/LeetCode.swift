//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: DetectCapital.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/13: Created by szwathub on 2021/11/13
//

class DetectCapital {
    func detectCapitalUse(_ word: String) -> Bool {
        let words = Array(word)

        if words.count >= 2 && words[0].isLowercase && words[1].isUppercase {
            return false
        }

        for index in 0..<words.count {
            if index >= 2 && words[index].isLowercase != words[1].isLowercase {
                return false
            }
        }

        return true
    }
}
