//
//  File name: PascalsTriangle.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/27: Created by szwathub on 2021/10/27
//

import Foundation

class PascalsTriangle {
    func generate(_ numRows: Int) -> [[Int]] {
        var answer = [[Int]]()

        var prev = [Int]()
        for row in 1...numRows {
            var current = [Int]()

            for index in 0..<row {
                if index == 0 || index == row - 1 {
                    current.append(1)
                } else {
                    current.append(prev[index - 1] + prev[index])
                }
            }

            prev = current
            answer.append(current)
        }

        return answer
    }
}
