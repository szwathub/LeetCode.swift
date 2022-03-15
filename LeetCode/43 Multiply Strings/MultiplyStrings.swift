//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MultiplyStrings.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/15: Created by szwathub on 2022/3/15
//

class MultiplyStrings {
    func multiply(_ num1: String, _ num2: String) -> String {
        if num1 == "0" || num2 == "0" {
            return "0"
        }

        let list1 = Array(num1)
        let list2 = Array(num2)
        var answer = [0]

        for index in stride(from: num2.count - 1, through: 0, by: -1) {
            var carry = 0
            var temp = [Int]()

            for _ in 0..<num2.count - 1 - index {
                temp.append(0)
            }

            let number2 = Int(String(list2[index]))!

            var j = num1.count - 1
            while j >= 0 || carry != 0 {
                let number1 = j < 0 ? 0 : Int(String(list1[j]))!
                let product = (number1 * number2 + carry) % 10
                temp.append(product)
                carry = (number1 * number2 + carry) / 10
                j -= 1
            }

            answer = add(answer, temp.reversed())
        }

        return answer.map{ String($0) }.joined(separator: "")
    }
    
    private func add(_ num1: [Int], _ num2: [Int]) -> [Int] {
        var carry = 0
        var i = num1.count - 1
        var j = num2.count - 1

        var answer = [Int]()
        while i >= 0 || j >= 0 || carry != 0 {
            let x = i < 0 ? 0 : num1[i]
            let y = j < 0 ? 0 : num2[j]
            let sum = (x + y + carry) % 10
            answer.append(sum)
            carry = (x + y + carry) / 10

            i -= 1
            j -= 1
        }

        return answer.reversed()
    }
}
