//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: NthTribonacciNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/13: Created by szwathub on 2021/11/13
//

class NthTribonacciNumber {
    func tribonacci(_ n: Int) -> Int {
        guard n > 2 else {
            return n == 0 ? 0 : 1
        }

        var t0 = 0, t1 = 1, t2 = 1
        var answer = 0
        for _ in 3...n {
            answer = t0 + t1 + t2
            (t2, t1, t0) = (answer, t2, t1)
        }

        return answer
    }
}
