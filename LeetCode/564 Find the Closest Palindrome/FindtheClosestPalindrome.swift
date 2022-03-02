//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindtheClosestPalindrome.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/2: Created by szwathub on 2022/3/2
//

import Foundation

class FindtheClosestPalindrome {
    func nearestPalindromic(_ n: String) -> String {
        let length = n.count
        let origin = Int64(n)!

        var candidates = Set<Int64>()
        let up = pow(10, length) + 1
        let down = pow(10, length - 1) - 1
        candidates.insert(NSDecimalNumber(decimal: up).int64Value)
        candidates.insert(NSDecimalNumber(decimal: down).int64Value)

        let halfLengthVal = Int64(String(Array(n)[0..<(length + 1)/2]))!
        let isEven: Bool = (length % 2 == 0)
        for halfCandidate in halfLengthVal-1...halfLengthVal+1 {
            let candidate = getNumber(from: String(halfCandidate), isEven)
            if candidate != origin {
                candidates.insert(candidate)
            }
        }

        var result: Int64 = 0
        var curDistance = Int64.max
        for candidate in candidates.sorted() {
            let dis = abs(candidate - origin)
            if dis < curDistance {
                curDistance = dis
                result = candidate
            }
        }
        return String(result)
    }

    private func getNumber(from halfCandidate: String, _ isEven: Bool) -> Int64 {
        if isEven {
            return Int64(halfCandidate + halfCandidate.reversed())!
        }

        return Int64(halfCandidate + String(Array(halfCandidate)[0..<halfCandidate.count-1]).reversed())!
    }
}
