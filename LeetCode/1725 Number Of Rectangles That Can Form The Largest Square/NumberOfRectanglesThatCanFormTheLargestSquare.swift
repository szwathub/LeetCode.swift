//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NumberOfRectanglesThatCanFormTheLargestSquare.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/2/4: Created by szwathub on 2022/2/4
//

class NumberOfRectanglesThatCanFormTheLargestSquare {
    func countGoodRectangles(_ rectangles: [[Int]]) -> Int {
        var maxLen = 0
        var answer = 0

        for rectangle in rectangles {
            let length = min(rectangle[0], rectangle[1])
            if length == maxLen {
                answer += 1
            } else if length > maxLen {
                maxLen = length
                answer = 1
            }
        }

        return answer
    }
}
