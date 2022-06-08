//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ValidBoomerang.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/8: Created by szwathub on 2022/6/8
//

class ValidBoomerang {
    func isBoomerang(_ points: [[Int]]) -> Bool {
        let (x1, y1) = (points[0][0], points[0][1])
        let (x2, y2) = (points[1][0], points[1][1])
        let (x3, y3) = (points[2][0], points[2][1])

        return (y2 - y1) * (x3 - x2) - (y3 - y2) * (x2 - x1) != 0
    }
}
