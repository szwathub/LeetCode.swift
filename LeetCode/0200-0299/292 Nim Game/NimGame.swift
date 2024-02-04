//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: NimGame.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/nim-game/description/
//  History:
//      2024/2/4: Created by szwathub on 2024/2/4
//

class NimGame {
    func canWinNim(_ n: Int) -> Bool {
        return n % 4 != 0
    }
}
