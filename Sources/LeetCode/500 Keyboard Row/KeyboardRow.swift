//
//  File name: KeyboardRow.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/31: Created by szwathub on 2021/10/31
//

import Foundation

class KeyboardRow {
    func findWords(_ words: [String]) -> [String] {
        let set1 = Set("qwertyuiop")
        let set2 = Set("asdfghjkl")
        let set3 = Set("zxcvbnm")

        var answer = [String]()
        for word in words {
            let lowercase = Set(word.lowercased())
            if lowercase.isSubset(of: set1) || lowercase.isSubset(of: set2) || lowercase.isSubset(of: set3) {
                answer.append(word)
            }
        }

        return answer
    }
}
