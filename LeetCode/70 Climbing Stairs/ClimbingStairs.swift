//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ClimbingStairs.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/31: Created by szwathub on 2021/10/31
//

import Foundation

class ClimbingStairs {
    func climbStairs(_ n: Int) -> Int {
        guard n > 2 else {
            return n
        }

        var slow = 1, fast = 2, answer = 0
        for _ in 3...n {
            answer = fast + slow
            (fast, slow) = (answer, fast)
        }

        return answer
    }
}
