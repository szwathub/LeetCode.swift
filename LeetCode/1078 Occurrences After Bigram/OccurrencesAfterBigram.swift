//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: OccurrencesAfterBigram.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/26: Created by szwathub on 2021/12/26
//

class OccurrencesAfterBigram {
    func findOcurrences(_ text: String, _ first: String, _ second: String) -> [String] {
        let list = text.split(separator: " ")
        guard list.count >= 3 else {
            return []
        }

        var answer = [String]()
        for index in 2..<list.count {
            if list[index - 2] == first && list[index - 1] == second {
                answer.append(String(list[index]))
            }
        }

        return answer
    }
}
