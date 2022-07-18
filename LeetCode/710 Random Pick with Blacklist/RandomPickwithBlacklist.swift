//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RandomPickwithBlacklist.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/333
//  History:
//      2022/7/18: Created by szwathub on 2022/7/18
//

class RandomPickwithBlacklist {

    private var bound: Int

    private var map = [Int: Int]()

    init(_ n: Int, _ blacklist: [Int]) {
        bound = n - blacklist.count
        var w = bound
        let black = blacklist.filter { $0 >= bound }

        for b in blacklist where b < bound {
            while black.contains(w) {
                w += 1
            }
            map[b] = w
            w += 1
        }
    }

    func pick() -> Int {
        let x = Int.random(in: 0..<bound)

        return pick(x)
    }

    func pick(_ x: Int) -> Int {
        return map[x, default: x]
    }
}
