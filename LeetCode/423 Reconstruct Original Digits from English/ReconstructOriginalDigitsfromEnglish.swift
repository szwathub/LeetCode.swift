//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ReconstructOriginalDigitsfromEnglish.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/24: Created by szwathub on 2021/11/24
//

import Foundation

class ReconstructOriginalDigitsfromEnglish {
    func originalDigits(_ s: String) -> String {
        var dict = [Character: Int]()
        for character in s {
            dict[character, default: 0] += 1
        }

        var count = [Int](repeating: 0, count: 10)
        count[0] = dict[Character("z"), default: 0]
        count[2] = dict[Character("w"), default: 0]
        count[4] = dict[Character("u"), default: 0]
        count[6] = dict[Character("x"), default: 0]
        count[8] = dict[Character("g"), default: 0]

        count[3] = dict[Character("h"), default: 0] - count[8]
        count[5] = dict[Character("f"), default: 0] - count[4]
        count[7] = dict[Character("s"), default: 0] - count[6]

        count[1] = dict[Character("o"), default: 0] - count[0] - count[2] - count[4]
        count[9] = dict[Character("i"), default: 0] - count[5] - count[6] - count[8]

        var answer = ""
        for (index, count) in count.enumerated() {
            for _ in 0..<count {
                answer += String(index)
            }
        }

        return answer
    }
}
