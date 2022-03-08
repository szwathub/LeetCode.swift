//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PlatesBetweenCandles.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/8: Created by szwathub on 2022/3/8
//

class PlatesBetweenCandles {
    func platesBetweenCandles(_ s: String, _ queries: [[Int]]) -> [Int] {
        let list = Array(s)

        var right = [Int](repeating: -1, count: list.count)
        var p = -1
        for index in stride(from: list.count - 1, through: 0, by: -1) {
            if list[index] == "|" {
                p = index
            }
            right[index] = p
        }

        var left = [Int](repeating: -1, count: list.count)
        var sum = [Int](repeating: 0, count: list.count + 1)
        p = -1
        for index in 0..<list.count {
            if list[index] == "|" {
                p = index
            }
            left[index] = p
            sum[index + 1] = sum[index] + (list[index] == "*" ? 1 : 0)
        }

        var answer = [Int](repeating: 0, count: queries.count)
        for (index, query) in queries.enumerated() {
            let start = right[query[0]]
            let end   = left[query[1]]

            if start != -1 && start <= end {
                answer[index] = sum[end + 1] - sum[start]
            }
        }

        return answer
    }
}
