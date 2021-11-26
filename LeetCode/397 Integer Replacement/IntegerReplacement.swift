//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: IntegerReplacement.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/19: Created by szwathub on 2021/11/19
//

import Foundation

class IntegerReplacement {
    func integerReplacement(_ n: Int) -> Int {
        guard n != 1 else {
            return 0
        }

        if n % 2 == 0 {
            return 1 + integerReplacement(n / 2)
        }

        return 2 + min(integerReplacement(n / 2), integerReplacement(n / 2 + 1))
    }
}
