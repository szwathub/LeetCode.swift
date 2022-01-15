//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CalculateMoneyinLeetcodeBank.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/15: Created by szwathub on 2022/1/15
//

class CalculateMoneyinLeetcodeBank {
    func totalMoney(_ n: Int) -> Int {
        let week = n / 7
        let firstWeek = (1 + 7) * 7 / 2
        let lastWeek  = firstWeek + 7 * (week - 1)
        var money = (firstWeek + lastWeek) * week / 2

        let day = n % 7
        let firstDayMoney = 1 + week
        let lastDayMoney = firstDayMoney + day - 1
        money += (firstDayMoney + lastDayMoney) * day / 2

        return money
    }
}
