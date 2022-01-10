//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PascalsTriangleII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/10: Created by szwathub on 2022/1/10
//

class PascalsTriangleII {
    func getRow(_ rowIndex: Int) -> [Int] {
        var answer = [Int](repeating: 1, count: rowIndex + 1)

        for row in 0...rowIndex {
            var prev = 1
            for index in 0...row {
                if index != 0 && index != row {
                    let value = prev + answer[index]
                    prev = answer[index]
                    answer[index] = value
                }
            }
        }

        return answer
    }
}
