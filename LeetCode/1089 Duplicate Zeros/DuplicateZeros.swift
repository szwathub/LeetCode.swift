//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DuplicateZeros.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/315
//  History:
//      2022/7/3: Created by szwathub on 2022/7/3
//

class DuplicateZeros {
    func duplicateZeros(_ arr: inout [Int]) {
        var count = arr.count, top = 0, i = -1

        while top < count {
            i += 1
            top += arr[i] == 0 ? 2 : 1
        }

        var j = count - 1
        if top == count + 1 {
            arr[j] = 0
            j -= 1
            i -= 1
        }

        while j >= 0 {
            arr[j] = arr[i]
            j -= 1
            if arr[i] == 0 {
                arr[j] = arr[i]
                j -= 1
            }
            i -= 1
        }
    }
}
