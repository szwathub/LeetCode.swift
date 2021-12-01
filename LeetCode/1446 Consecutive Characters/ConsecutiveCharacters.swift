//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ConsecutiveCharacters.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/1: Created by szwathub on 2021/12/1
//

class ConsecutiveCharacters {
    func maxPower(_ s: String) -> Int {
        let list = Array(s)
        var answer = 0, count = 0
        for index in 0..<list.count {
            if index == 0 || list[index] == list[index - 1] {
                count += 1
            } else {
                answer = max(answer, count)
                count = 1
            }
        }
        answer = max(answer, count)

        return answer
    }
}
