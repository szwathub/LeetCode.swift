//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: GrayCode.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/8: Created by szwathub on 2022/1/8
//

class GrayCode {
    func grayCode(_ n: Int) -> [Int] {
        var answer = [0]
        var head   = 1

        for _ in 1...n {
            var level = [Int]()
            for bit in answer.reversed() {
                level.append(head + bit)
            }
            answer.append(contentsOf: level)
            head <<= 1
        }

        return answer
    }
}
