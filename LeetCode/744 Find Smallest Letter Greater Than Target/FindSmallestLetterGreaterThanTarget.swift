//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindSmallestLetterGreaterThanTarget.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/3: Created by szwathub on 2022/4/3
//

class FindSmallestLetterGreaterThanTarget {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var l = 0, r = letters.count - 1
        while l < r {
            let mid = (l + r) >> 1
            if letters[mid] > target {
                r = mid
            } else {
                l = mid + 1
            }
        }

        return letters[r] > target ? letters[r] : letters[0]
    }
}
