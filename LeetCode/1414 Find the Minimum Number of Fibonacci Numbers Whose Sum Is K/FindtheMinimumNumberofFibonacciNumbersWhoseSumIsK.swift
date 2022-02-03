//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindtheMinimumNumberofFibonacciNumbersWhoseSumIsK.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/2/3: Created by szwathub on 2022/2/3
//

class FindtheMinimumNumberofFibonacciNumbersWhoseSumIsK {
    func findMinFibonacciNumbers(_ k: Int) -> Int {
        var f: [Int] = [1, 1]

        var prev = 1, current = 1
        while current < k {
            let new = prev + current
            f.append(new)
            (prev, current) = (current, new)
        }

        var answer = 0
        var index  = f.count - 1
        var k = k
        while k > 0 {
            if k >= f[index] {
                k -= f[index]
                answer += 1
            }
            index -= 1
        }

        return answer
    }
}
