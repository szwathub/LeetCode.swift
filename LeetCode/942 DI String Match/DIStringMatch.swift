//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DIStringMatch.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/9: Created by szwathub on 2022/5/9
//

class DIStringMatch {
    func diStringMatch(_ s: String) -> [Int] {
        var max = s.count, min = 0
        var answer = [Int]()

        for character in s {
            if character == "I" {
                answer.append(min)
                min += 1
            } else {
                answer.append(max)
                max -= 1
            }
        }
        answer.append(min)

        return answer
    }
}
