//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestSubstringWithoutRepeatingCharacters.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/24: Created by szwathub on 2022/3/24
//

class LongestSubstringWithoutRepeatingCharacters {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        var set = Set<Character>()
        var right = -1, answer = 0
        let list = Array(s)

        for left in 0..<list.count {
            if left != 0 {
                set.remove(list[left - 1])
            }

            while right + 1 < list.count && !set.contains(list[right + 1]) {
                set.insert(list[right + 1])
                right += 1
            }

            answer = max(answer, right - left + 1)
        }

        return answer
    }
}
