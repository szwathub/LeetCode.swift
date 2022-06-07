//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KokoEatingBananas.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/7: Created by szwathub on 2022/6/7
//

class KokoEatingBananas {
    func minEatingSpeed(_ piles: [Int], _ h: Int) -> Int {
        var left = 1
        var right = 1
        for piles in piles {
            right = max(right, piles)
        }

        while left < right {
            let mid = (left + right) >> 1
            if calculateTime(piles, mid) > h {
                left = mid + 1
            } else {
                right = mid
            }
        }

        return left
    }

    private func calculateTime(_ piles: [Int], _ speed: Int) -> Int {
        var time = 0
        for pile in piles {
            time += (pile + speed - 1) / speed
        }

        return time
    }
}
