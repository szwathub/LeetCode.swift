//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LexicographicalNumbers.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/18: Created by szwathub on 2022/4/18
//

class LexicographicalNumbers {
    func lexicalOrder(_ n: Int) -> [Int] {
        var answer = [Int](repeating: 0, count: n)

        var number = 1
        for index in 0..<n {
            answer[index] = number

            if number * 10 <= n {
                number *= 10
            } else {
                while number % 10 == 9 || number + 1 > n {
                    number /= 10
                }
                number += 1
            }
        }

        return answer
    }
}
