//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: JumpGame.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/15: Created by szwathub on 2021/11/15
//

import Foundation

class JumpGame {
    func canJump(_ nums: [Int]) -> Bool {
        var distance = 0
        for (index, jump) in nums.enumerated() {
            if index > distance {
                return false
            }
            distance = max(distance, index + jump)
        }

        return true
    }
}
