//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LetterCombinationsofaPhoneNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/29: Created by szwathub on 2022/4/29
//

class LetterCombinationsofaPhoneNumber {

    let map: [Character: String] = [
        "2": "abc",
        "3": "def",
        "4": "ghi",
        "5": "jkl",
        "6": "mno",
        "7": "pqrs",
        "8": "tuv",
        "9": "wxyz"
    ]

    func letterCombinations(_ digits: String) -> [String] {
        guard !digits.isEmpty else {
            return []
        }

        var answer = [String]()
        helper("", 0, Array(digits), &answer)

        return answer
    }

    private func helper(_ combination: String, _ index: Int, _ digits: [Character], _ answer: inout [String]) {
        guard index != digits.count  else {
            answer.append(combination)
            return
        }

        if let list = map[digits[index]] {
            for letter in list {
                helper(combination + String(letter), index + 1, digits, &answer)
            }
        }
    }
}
