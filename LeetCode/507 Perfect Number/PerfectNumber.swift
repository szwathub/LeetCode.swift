//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PerfectNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/2: Created by szwathub on 2022/1/2
//

class PerfectNumber {
    func checkPerfectNumber(_ num: Int) -> Bool {
        guard num != 1 else {
            return false
        }

        var sum = 1
        var d = 2

        while d * d <= num {
            if num % d == 0 {
                sum += d
                if d * d < num {
                    sum += num / d
                }
            }

            d += 1
        }

        return sum == num
    }
}
