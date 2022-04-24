//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryGap.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/24: Created by szwathub on 2022/4/24
//

class BinaryGap {
    func binaryGap(_ n: Int) -> Int {
        var last = -1, answer = 0, index = 0
        var n = n
        while n != 0 {
            if (n & 1) == 1 {
                if last != -1 {
                    answer = max(answer, index - last)
                }
                last = index
            }

            n >>= 1
            index += 1
        }

        return answer
    }
}
