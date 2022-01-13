//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: WordPattern.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/14: Created by szwathub on 2022/1/14
//

class WordPattern {
    func wordPattern(_ pattern: String, _ s: String) -> Bool {
        var mapStr  = [String: Character]()
        var mapChar = [Character: String]()
        let sequence = s.split(separator: " ").map { String($0) }

        guard pattern.count == sequence.count else {
            return false
        }

        for (character, word) in zip(pattern, sequence) {
            if let value = mapStr[word], value != character {
                return false
            }
            if let value = mapChar[character], value != word {
                return false
            }

            mapStr[word] = character
            mapChar[character] = word
        }

        return true
    }
}
