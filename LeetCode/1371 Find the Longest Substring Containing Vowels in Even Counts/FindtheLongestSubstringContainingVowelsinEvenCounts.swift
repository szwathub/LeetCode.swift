//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindtheLongestSubstringContainingVowelsinEvenCounts.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

class FindtheLongestSubstringContainingVowelsinEvenCounts {

    func findTheLongestSubstring(_ s: String) -> Int {
        var status = 0
        var pos = [Int](repeating: -1, count: 32)
        pos[0] = 0
        var answer = 0
        for (index, character) in s.enumerated() {
            status ^= mask(character)

            if pos[status] != -1 {
                answer = max(answer, index + 1 - pos[status])
            } else {
                pos[status] = index + 1
            }
        }

        return answer
    }

    private func mask(_ character: Character) -> Int {
        switch character {
        case "a":
            return 0b00001
        case "e":
            return 0b00010
        case "i":
            return 0b00100
        case "o":
            return 0b01000
        case "u":
            return 0b10000
        default:
            return 0
        }
    }
}
