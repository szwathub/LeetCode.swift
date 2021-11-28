//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FibonacciNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/13: Created by szwathub on 2021/11/13
//

class FibonacciNumber {
    func fib(_ n: Int) -> Int {
        guard n > 1 else {
            return n
        }

        var slow = 0, fast = 1
        var fib = 0
        for _ in 2...n {
            fib = fast + slow
            (fast, slow) = (fib, fast)
        }

        return fib
    }
}
