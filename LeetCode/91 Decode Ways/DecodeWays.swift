//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DecodeWays.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/30: Created by szwathub on 2022/4/30
//

import Foundation

class DecodeWays {
    func numDecodings(_ s: String) -> Int {
        let characters = s.map { Int(String($0))! }

        var first = 0, second = 1, answer = 0
        for i in stride(from: 1, through: characters.count, by: 1) {
            answer = 0
            if characters[i - 1] != 0 {
                answer += second
            }

            if i > 1 && characters[i - 2] != 0 && ((characters[i - 2]) * 10 + (characters[i - 1]) <= 26) {
                answer += first
            }
            (first, second) = (second, answer)
        }

        return answer
    }
}
