//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: GoatLatin.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/21: Created by szwathub on 2022/4/21
//

class GoatLatin {

    let vowels: Set<Character> = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]

    func toGoatLatin(_ sentence: String) -> String {
        let sentence = Array(sentence)
        var answer = ""
        var start = 0, count = 0

        while start < sentence.count {
            var end = start
            while end < sentence.count && sentence[end] != " " {
                end += 1
            }

            count += 1
            if count != 1 {
                answer += " "
            }

            if vowels.contains(sentence[start]) {
                answer += String(sentence[start..<end]) + "ma" + String(repeating: "a", count: count)
            } else {
                answer += String(sentence[start + 1..<end])
                answer.append(sentence[start])
                answer += "ma" + String(repeating: "a", count: count)
            }

            start = end + 1
        }

        return answer
    }
}
