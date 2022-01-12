//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: AddStrings.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/13: Created by szwathub on 2022/1/13
//

class AddStrings {
    func addStrings(_ num1: String, _ num2: String) -> String {
        let zero = Character("0").asciiValue!
        let first = Array(num1)
        let second = Array(num2)

        var firstEnd  = first.count - 1
        var secondEnd = second.count - 1
        var carry = 0
        var current = 0
        var answer = ""

        while firstEnd >= 0 || secondEnd >= 0 || carry != 0 {
            current = carry

            if firstEnd >= 0 {
                current += Int(first[firstEnd].asciiValue! - zero)
                firstEnd -= 1
            }
            if secondEnd >= 0 {
                current += Int(second[secondEnd].asciiValue! - zero)
                secondEnd -= 1
            }

            carry = current / 10
            current = current % 10
            answer += "\(current)"
        }

        return String(answer.reversed())
    }
}
