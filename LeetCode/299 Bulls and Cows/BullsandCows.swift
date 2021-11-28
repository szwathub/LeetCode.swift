//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: BullsandCows.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/8: Created by szwathub on 2021/11/8
//

class BullsandCows {
    func getHint(_ secret: String, _ guess: String) -> String {
        var bulls = 0, cows = 0
        var count = [Character: Int]()

        for (s, g) in zip(secret, guess) {
            if s == g {
                bulls += 1
            } else {
                if count[s, default: 0] < 0 {
                    cows += 1
                }
                if count[g, default: 0] > 0 {
                    cows += 1
                }

                count[s, default: 0] += 1
                count[g, default: 0] -= 1
            }
        }

        return "\(bulls)A\(cows)B"
    }
}
