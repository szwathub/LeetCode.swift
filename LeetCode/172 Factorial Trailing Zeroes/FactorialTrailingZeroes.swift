//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FactorialTrailingZeroes.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/25: Created by szwathub on 2022/3/25
//

class FactorialTrailingZeroes {
    func trailingZeroes(_ n: Int) -> Int {
        var answer = 0
        var n = n
        while n != 0 {
            n /= 5
            answer += n
        }

        return answer
    }
}
