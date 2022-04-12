//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NumberofLinesToWriteString.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/12: Created by szwathub on 2022/4/12
//

class NumberofLinesToWriteString {

    let MAX_WIDTH = 100

    func numberOfLines(_ widths: [Int], _ s: String) -> [Int] {
        var lines = 1, width = 0
        for character in s {
            let need = widths[Int(Int(character.asciiValue! - Character("a").asciiValue!))]
            width += need
            if width > MAX_WIDTH {
                lines += 1
                width = need
            }
        }

        return [lines, width]
    }
}
