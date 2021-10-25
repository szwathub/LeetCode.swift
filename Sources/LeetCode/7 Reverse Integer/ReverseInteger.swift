//
//  File name: ReverseInteger.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/19: Created by szwathub on 2021/10/19
//

import Foundation

class ReverseInteger {
    func reverse(_ x: Int) -> Int {
        var x = x
        var rev = 0

        while x != 0 {
            if rev < Int32.min / 10 || rev > Int32.max / 10 {
                return 0
            }

            let digit = x % 10
            x /= 10
            rev = rev * 10 + digit
        }

        return rev
    }
}
