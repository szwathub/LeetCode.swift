//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LargestPalindromeProduct.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/16: Created by szwathub on 2022/4/16
//

import Darwin

class LargestPalindromeProduct {
    func largestPalindrome(_ n: Int) -> Int {
        if n == 1 {
            return 9
        }

        let upper = Int(pow(10, Double(n)) - 1)
        var answer = 0
        loop: for left in stride(from: upper, to: 0, by: -1) {
            var palindrome = left
            var right = left
            while right > 0 {
                palindrome = palindrome * 10 + right % 10
                right /= 10
            }

            var x = upper
            while x * x >= palindrome {
                if palindrome % x == 0 {
                    answer = palindrome % 1337
                    break loop
                }
                x -= 1
            }
        }

        return answer
    }
}
