//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: MaximumProductofWordLengths.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/17: Created by szwathub on 2021/11/17
//

import Foundation

class MaximumProductofWordLengths {
    func maxProduct(_ words: [String]) -> Int {
        let base = Character("a").asciiValue!
        var masks = [Int: Int]()

        for word in words {
            var mask = 0
            for character in word {
                let offset = character.asciiValue! - base
                mask |= 1 << offset
            }
            if !masks.keys.contains(mask) || masks[mask]! < word.count {
                masks[mask] = word.count
            }
        }

        var answer = 0
        for (key1, value1) in masks {
            for (key2, value2) in masks where key1 & key2 == 0 {
                answer = max(answer, value1 * value2)
            }
        }

        return answer
    }
}
