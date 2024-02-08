//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: ClimbingStairs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/climbing-stairs
//  History:
//      2024/2/8: Created by szwathub on 2024/2/8
//

class ClimbingStairs {

    func climbStairs(_ n: Int) -> Int {
        var first = 0, second = 0, ans = 1
        for _ in 1...n {
            first = second
            second = ans
            ans = first + second
        }
        return ans
    }
}
