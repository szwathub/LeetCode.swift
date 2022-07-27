//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FractionAdditionandSubtraction.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/344
//  History:
//      2022/7/27: Created by szwathub on 2022/7/27
//

class FractionAdditionandSubtraction {
    func fractionAddition(_ expression: String) -> String {
        func helper(_ expression: [Character]) -> String {
            var denominator = 0, numerator = 1
            var index = 0, length = expression.count

            while index < length {
                var _denominator = 0, sign = 1
                if expression[index] == "-" || expression[index] == "+" {
                    if expression[index] == "-" {
                        sign = -1
                    }
                    index += 1
                }

                while index < length, let digit = Int(String(expression[index])) {
                    _denominator = _denominator * 10 + digit
                    index += 1
                }
                _denominator = sign * _denominator
                index += 1

                var _numerator = 0
                while index < length, let digit = Int(String(expression[index])) {
                    _numerator = _numerator * 10 + digit
                    index += 1
                }

                denominator = denominator * _numerator + _denominator * numerator
                numerator *= _numerator
            }

            if denominator == 0 {
                return "0/1"
            }

            let gcd = gcdIterativeEuklid(abs(denominator), numerator)

            return "\(denominator / gcd)/\(numerator / gcd)"
        }

        return helper(Array(expression))
    }

    private func gcdIterativeEuklid(_ m: Int, _ n: Int) -> Int {
        var a: Int = 0
        var b: Int = max(m, n)
        var r: Int = min(m, n)

        while r != 0 {
            a = b
            b = r
            r = a % b
        }

        return b
    }
}
