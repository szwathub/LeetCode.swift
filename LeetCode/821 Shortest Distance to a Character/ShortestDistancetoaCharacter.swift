//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ShortestDistancetoaCharacter.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/19: Created by szwathub on 2022/4/19
//

class ShortestDistancetoaCharacter {
    func shortestToChar(_ s: String, _ c: Character) -> [Int] {
        return helper(Array(s), c)
    }

    private func helper(_ s: [Character], _ character: Character) -> [Int] {
        var answer = [Int](repeating: 0, count: s.count)

        var index = -s.count
        for idx in 0..<s.count {
            if character == s[idx] {
                index = idx
            }
            answer[idx] = idx - index
        }

        index = 2 * s.count
        for idx in stride(from: s.count - 1, through: 0, by: -1) {
            if character == s[idx] {
                index = idx
            }
            answer[idx] = min(answer[idx], index - idx)
        }

        return answer
    }
}
