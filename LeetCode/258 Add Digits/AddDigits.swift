//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: AddDigits.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/3: Created by szwathub on 2022/3/3
//

class AddDigits {
    func addDigitsI(_ num: Int) -> Int {
        var answer = num

        while answer >= 10 {
            var sum = 0
            while answer != 0 {
                sum += answer % 10
                answer /= 10
            }
            answer = sum
        }

        return answer
    }

    /// Time Complexity: O(1), Space Complexity: O(1)
    func addDigitsII(_ num: Int) -> Int {
        return (num - 1) % 9 + 1;
    }
}
