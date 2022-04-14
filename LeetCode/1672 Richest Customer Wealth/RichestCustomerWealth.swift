//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RichestCustomerWealth.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/14: Created by szwathub on 2022/4/14
//

class RichestCustomerWealth {
    func maximumWealth(_ accounts: [[Int]]) -> Int {
        return accounts.map { $0.reduce(0, +) }.max()!
    }
}
