//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CountNumberswithUniqueDigits.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/11: Created by szwathub on 2022/4/11
//

class CountNumberswithUniqueDigits {
    func countNumbersWithUniqueDigits(_ n: Int) -> Int {
        guard n != 0 else {
            return 1
        }

        var answer = 10
        var choose = 9
        for index in 1...n where index > 1 {
            let current = choose * (10 - index + 1)
            answer += current
            choose = current
        }

        return answer
    }
}
