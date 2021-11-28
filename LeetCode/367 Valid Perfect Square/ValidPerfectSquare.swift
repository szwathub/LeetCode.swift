//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ValidPerfectSquare.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/4: Created by szwathub on 2021/11/4
//

class ValidPerfectSquare {
    func isPerfectSquare(_ num: Int) -> Bool {
        var left = 0, right = num
        while left <= right {
            let mid = (left + right) / 2
            let square = mid * mid
            if square < num {
                left = mid + 1
            } else if square > num {
                right = mid - 1
            } else {
                return true
            }
        }

        return false
    }
}
