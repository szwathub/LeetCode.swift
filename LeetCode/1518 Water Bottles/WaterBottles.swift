//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: WaterBottles.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/18: Created by szwathub on 2021/12/18
//

class WaterBottles {
    func numWaterBottles(_ numBottles: Int, _ numExchange: Int) -> Int {
        var answer = numBottles
        var empty = numBottles

        while empty >= numExchange {
            let exchanged = empty / numExchange
            empty = empty % numExchange + exchanged
            answer += exchanged
        }

        return answer
    }
}
