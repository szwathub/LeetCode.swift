//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RepeatedDNASequences.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/15: Created by szwathub on 2022/3/15
//

import Foundation

class RepeatedDNASequences {

    let length = 10
    let bin: [Character: Int32] = [
        "A": 0b00,
        "T": 0b01,
        "C": 0b10,
        "G": 0b11
    ]

    lazy var mask: Int32 = (1 << (2 * length)) - 1

    func findRepeatedDnaSequences(_ s: String) -> [String] {
        guard s.count > 10 else {
            return []
        }

        var x: Int32 = 0
        let list = Array(s)
        for index in 0..<length - 1 {
            x = (x << 2) | bin[list[index]]!
        }

        var cnt = [Int32: Int]()
        var answer = [String]()

        for index in 0..<s.count - length + 1 {
            x = ((x << 2) | bin[list[index + length - 1]]!) & mask
            cnt[x, default: 0] += 1

            if cnt[x] == 2 {
                answer.append(String(list[index..<index + length]))
            }
        }

        return answer
    }
}
