//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Base7.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/7: Created by szwathub on 2022/3/7
//

class Base7 {
    func convertToBase7(_ num: Int) -> String {
        guard num != 0 else {
            return "0"
        }

        var number = abs(num)
        var digits = [String]()

        while number != 0 {
            digits.append(String(number % 7))
            number /= 7
        }
        if num < 0 {
            digits.append("-")
        }

        return digits.reversed().joined(separator: "")
    }
}
