//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SelfDividingNumbers.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/31: Created by szwathub on 2022/3/31
//

class SelfDividingNumbers {
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var answer = [Int]()
        for number in left...right where isSelfDividing(number) {
            answer.append(number)
        }

        return answer
    }

    private func isSelfDividing(_ number: Int) -> Bool {
        var k = number
        while k != 0 {
            let d = k % 10
            k /= 10
            if d == 0 || number % d != 0 {
                return false
            }
        }

        return true
    }
}
