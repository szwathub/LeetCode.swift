//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindtheWinneroftheCircularGame.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

class FindtheWinneroftheCircularGame {
    func findTheWinner(_ n: Int, _ k: Int) -> Int {
        var p = 0
        for index in 1...n {
            p = (p + k) % index
        }

        return p + 1
    }
}
