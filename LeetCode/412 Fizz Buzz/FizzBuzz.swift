//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FizzBuzz.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/13: Created by szwathub on 2021/10/13
//

class FizzBuzz {
    func fizzBuzz(_ n: Int) -> [String] {
        var ans: [String] = []

        for index in 1...n {
            let three = (index % 3) == 0
            let five = (index % 5) == 0

            if three && five {
                ans.append("FizzBuzz")
            } else if three {
                ans.append("Fizz")
            } else if five {
                ans.append("Buzz")
            } else {
                ans.append(String(index))
            }
        }

        return ans
    }
}
