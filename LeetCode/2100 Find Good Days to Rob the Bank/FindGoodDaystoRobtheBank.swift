//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindGoodDaystoRobtheBank.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/11: Created by szwathub on 2022/4/11
//

class FindGoodDaystoRobtheBank {
    func goodDaysToRobBank(_ security: [Int], _ time: Int) -> [Int] {
        let length = security.count
        guard length > 2 * time else {
            return []
        }

        var left = [Int](repeating: 0, count: length)
        var right = [Int](repeating: 0, count: length)

        for index in 1..<length {
            if security[index] <= security[index - 1] {
                left[index] = left[index - 1] + 1
            }
            if security[length - index - 1] <= security[length - index] {
                right[length - index - 1] = right[length - index] + 1
            }
        }

        return Array(time..<length - time).filter { left[$0] >= time && right[$0] >= time }
    }
}
