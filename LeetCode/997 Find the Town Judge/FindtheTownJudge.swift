//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FindtheTownJudge.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/20: Created by szwathub on 2021/12/20
//

class FindtheTownJudge {
    func findJudge(_ n: Int, _ trust: [[Int]]) -> Int {
        var judge = [Int](repeating: 0, count: n + 1)

        for item in trust {
            judge[item[0]] -= 1
            judge[item[1]] += 1
        }

        for index in 1..<judge.count where judge[index] == n - 1 {
            return index
        }

        return -1
    }
}
