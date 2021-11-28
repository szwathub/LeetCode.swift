//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: BestTimetoBuyandSellStock.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/2: Created by szwathub on 2021/11/2
//

class BestTimetoBuyandSellStock {
    func maxProfit(_ prices: [Int]) -> Int {
        var minprice = Int.max
        var maxprofit = 0

        for price in prices {
            minprice = min(price, minprice)
            maxprofit = max(maxprofit, price - minprice)
        }

        return maxprofit
    }
}
