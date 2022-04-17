//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MostCommonWord.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/17: Created by szwathub on 2022/4/17
//

class MostCommonWord {
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let words = paragraph.lowercased().components(separatedBy: [" ", "!", "?", "'", ",", ";", "."])
        var counter = [String: Int]()

        for word in words where word != "" {
            counter[word, default: 0] += 1
        }
        banned.forEach { counter.removeValue(forKey: $0) }

        var answer = ""
        var max = 0
        for (key, value) in counter where value > max {
            answer = key
            max = value
        }

        return answer
    }
}
