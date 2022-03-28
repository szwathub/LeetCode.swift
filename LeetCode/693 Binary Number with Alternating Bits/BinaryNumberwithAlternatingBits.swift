//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryNumberwithAlternatingBits.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/28: Created by szwathub on 2022/3/28
//

class BinaryNumberwithAlternatingBits {
    func hasAlternatingBits(_ n: Int) -> Bool {
        let flag = n ^ (n >> 1)
        return flag & (flag + 1) == 0
    }
}
