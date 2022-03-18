//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SimpleBankSystem.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

class SimpleBankSystem {

    var balance: [Int]

    init(_ balance: [Int]) {
        self.balance = balance
    }

    func transfer(_ account1: Int, _ account2: Int, _ money: Int) -> Bool {
        guard check(money: money, at: account1) && check(money: 0, at: account2) else {
            return false
        }

        balance[account1 - 1] -= money
        balance[account2 - 1] += money
        return true
    }

    func deposit(_ account: Int, _ money: Int) -> Bool {
        guard check(money: 0, at: account) else {
            return false
        }

        balance[account - 1] += money
        return true
    }

    func withdraw(_ account: Int, _ money: Int) -> Bool {
        guard check(money: money, at: account) else {
            return false
        }

        balance[account - 1] -= money
        return true
    }

    private func check(money: Int, at account: Int) -> Bool {
        guard account <= balance.count else {
            return false
        }

        return balance[account - 1] >= money
    }
}
