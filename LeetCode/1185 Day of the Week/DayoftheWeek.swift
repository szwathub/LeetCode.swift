//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DayoftheWeek.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/4: Created by szwathub on 2022/1/4
//

class DayoftheWeek {
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
        let weeks = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"]
        let d = day
        var m = month
        var y = year

        if month < 3 {
            m += 12
            y -= 1
        }

        let D = y + y / 4 - y / 100 + y / 400 + 2 * m + 3 * (m + 1) / 5 + d + 1
        return weeks[D % 7]
    }
}
