//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PrimeNumberofSetBitsinBinaryRepresentation.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/5: Created by szwathub on 2022/4/5
//

class PrimeNumberofSetBitsinBinaryRepresentation {
    func countPrimeSetBits(_ left: Int, _ right: Int) -> Int {
        var answer = 0
        for number in left...right where isPrime(number.nonzeroBitCount) {
            answer += 1
        }

        return answer
    }

    private func isPrime(_ x: Int) -> Bool {
        guard x >= 2 else {
            return false
        }

        var i = 2
        while i * i <= x {
            if x % i == 0 {
                return false
            }
            i += 1
        }

        return true
    }
}
