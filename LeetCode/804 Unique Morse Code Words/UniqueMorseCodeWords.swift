//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: UniqueMorseCodeWords.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/10: Created by szwathub on 2022/4/10
//

class UniqueMorseCodeWords {
    let maps = [".-", "-...", "-.-.", "-..", ".", "..-.", "--.", "....", "..", ".---",
                "-.-", ".-..", "--", "-.", "---", ".--.", "--.-", ".-.", "...", "-",
                "..-", "...-", ".--", "-..-", "-.--", "--.."]

    func uniqueMorseRepresentations(_ words: [String]) -> Int {
        var answer = Set<String>()
        for word in words {
            var current = ""
            for character in word {
                let index = Int(character.asciiValue! - Character("a").asciiValue!)
                current += maps[index]
            }
            answer.insert(current)
        }

        return answer.count
    }
}
