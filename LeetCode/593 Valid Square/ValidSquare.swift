//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ValidSquare.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/346
//  History:
//      2022/7/29: Created by szwathub on 2022/7/29
//

class ValidSquare {
    func validSquare(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
        if check(p1, p2, p3, p4) || check(p1, p3, p2, p4) || check(p1, p4, p2, p3) {
            return true
        }

        return false
    }

    private func check(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
        guard p1 != p2, p3 != p4 else {
            return false
        }

        let v1 = (p1[0] - p2[0], p1[1] - p2[1])
        let v2 = (p3[0] - p4[0], p3[1] - p4[1])

        return checkMidPoint(p1, p2, p3, p4) && checkLength(v1, v2) && checkAngle(v1, v2)
    }

    private func checkMidPoint(_ p1: [Int], _ p2: [Int], _ p3: [Int], _ p4: [Int]) -> Bool {
        return p1[0] + p2[0] == p3[0] + p4[0] && p1[1] + p2[1] == p3[1] + p4[1]
    }

    private func checkLength(_ v1: (Int, Int), _ v2: (Int, Int)) -> Bool {
        return v1.0 * v1.0 + v1.1 * v1.1 == v2.0 * v2.0 + v2.1 * v2.1
    }

    private func checkAngle(_ v1: (Int, Int), _ v2: (Int, Int)) -> Bool {
        return v1.0 * v2.0 + v1.1 * v2.1 == 0
    }
}
