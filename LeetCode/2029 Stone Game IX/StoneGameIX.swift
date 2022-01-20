//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: StoneGameIX.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/20: Created by szwathub on 2022/1/20
//

class StoneGameIX {
    func stoneGameIX(_ stones: [Int]) -> Bool {
        var cnt0 = 0, cnt1 = 0, cnt2 = 0

        for stone in stones {
            let type = stone % 3
            if type == 0 {
                cnt0 += 1
            } else if type == 1 {
                cnt1 += 1
            } else {
                cnt2 += 1
            }
        }

        if cnt0 % 2 == 0 {
            return cnt1 >= 1 && cnt2 >= 1
        }

        return cnt1 - cnt2 > 2 || cnt2 - cnt1 > 2
    }
}
