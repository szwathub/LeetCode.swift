//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: EliminationGame.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/16: Created by szwathub on 2022/1/16
//

class EliminationGame {
    func lastRemaining(_ n: Int) -> Int {
        return n == 1 ? 1 : 2 * (n / 2 + 1 - lastRemaining(n / 2))
    }
}
