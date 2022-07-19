//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DifferentWaystoAddParentheses.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/336
//  History:
//      2022/7/19: Created by szwathub on 2022/7/19
//

class DifferentWaystoAddParentheses {

    private let ADDITION = -1

    private let SUBTRACTION = -2

    private let MULTIPLICATION = -3

    func diffWaysToCompute(_ expression: String) -> [Int] {
        return helper(Array(expression))
    }

    private func helper(_ expression: [Character]) -> [Int] {
        var ops = [Int]()
        var index = 0
        while index < expression.count {
            if Int(String(expression[index])) != nil {
                var x = 0
                while index < expression.count, let digit = Int(String(expression[index])) {
                    x = x * 10 + digit
                    index += 1
                }
                ops.append(x)
            } else {
                if expression[index] == "+" {
                    ops.append(ADDITION)
                } else if expression[index] == "-" {
                    ops.append(SUBTRACTION)
                } else {
                    ops.append(MULTIPLICATION)
                }
                index += 1
            }
        }

        func dfs(_ l: Int, _ r: Int) -> [Int] {
            guard l != r else {
                return [ops[l]]
            }

            var ans = [Int]()
            for index in stride(from: l, to: r, by: 2) {
                let left = dfs(l, index)
                let right = dfs(index + 2, r)

                for x in left {
                    for y in right {
                        if ops[index + 1] == ADDITION {
                            ans.append(x + y)
                        } else if ops[index + 1] == SUBTRACTION {
                            ans.append(x - y)
                        } else {
                            ans.append(x * y)
                        }
                    }
                }
            }

            return ans
        }

        return dfs(0, ops.count - 1)
    }
}
