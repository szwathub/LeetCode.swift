//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: AdditiveNumber.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/10: Created by szwathub on 2022/1/10
//

class AdditiveNumber {

    private(set) var sequence = [Int]()
    typealias Scope = (start: Int, end: Int)

    func isAdditiveNumber(_ num: String) -> Bool {
        sequence = num.map({ Int(String($0))! })

        for start in 0..<sequence.count where start > 0 {
            if sequence[0] == 0 && start != 1 {
                break
            }

            for end in start..<sequence.count {
                if sequence[start] == 0 && start != end {
                    break
                }

                if valid((start, end)) {
                    return true
                }
            }
        }

        return false
    }

    func valid(_ scope: Scope) -> Bool {
        var first: Scope = (0, scope.start - 1)
        var second = scope

        while second.end < sequence.count {
            let number = numberAdd(first: first, second: second)
            let third: Scope = (second.end + 1, second.end + number.count)

            if third.end >= sequence.count || !check(third, number) {
                break
            }

            if third.end == sequence.count - 1 {
                return true
            }

            (first, second) = (second, third)
        }

        return false
    }

    func check(_ range: Scope, _ number: [Int]) -> Bool {
        let compare = Array(sequence[range.start...range.end])

        return compare == number
    }

    func numberAdd(first: Scope, second: Scope) -> [Int] {
        var third = [Int]()
        var carry = 0
        var firstEnd = first.end
        var secondEnd = second.end
        var current = 0

        while firstEnd >= first.start || secondEnd >= second.start || carry != 0 {
            current = carry

            if firstEnd >= first.start {
                current += sequence[firstEnd]
                firstEnd -= 1
            }
            if secondEnd >= second.start {
                current += sequence[secondEnd]
                secondEnd -= 1
            }

            carry = current / 10
            current = current % 10
            third.append(current)
        }

        return third.reversed()
    }
}
