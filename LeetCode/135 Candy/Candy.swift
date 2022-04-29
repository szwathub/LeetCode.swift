//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Candy.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/29: Created by szwathub on 2022/4/29
//

class Candy {
    func candy(_ ratings: [Int]) -> Int {
        var left  = [Int](repeating: 1, count: ratings.count)
        var right = [Int](repeating: 1, count: ratings.count)

        for index in stride(from: 1, through: ratings.count - 1, by: 1) {
            if ratings[index] > ratings[index - 1] {
                left[index] = left[index - 1] + 1
            }
        }
        var answer = left[ratings.count - 1]
        for index in stride(from: ratings.count - 2, through: 0, by: -1) {
            if ratings[index] > ratings[index + 1] {
                right[index] = right[index + 1] + 1
            }

            answer += max(left[index], right[index])
        }

        return answer
    }
}
