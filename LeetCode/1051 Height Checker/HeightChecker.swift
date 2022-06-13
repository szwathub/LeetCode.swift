//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: HeightChecker.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/13: Created by szwathub on 2022/6/13
//

class HeightChecker {
    func heightChecker(_ heights: [Int]) -> Int {
        let expected = heights.sorted()
        var ans = 0
        for (e, h) in zip(expected, heights) where e != h {
            ans += 1
        }

        return ans
    }
}
