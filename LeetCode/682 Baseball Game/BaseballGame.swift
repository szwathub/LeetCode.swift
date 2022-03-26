//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BaseballGame.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/26: Created by szwathub on 2022/3/26
//

class BaseballGame {
    func calPoints(_ ops: [String]) -> Int {
        var score = [Int]()

        for op in ops {
            let count = score.count
            switch op {
            case "+":
                score.append(score[count - 1] + score[count - 2])
            case "D":
                score.append(score[count - 1] * 2)
            case "C":
                score.removeLast()
            default:
                score.append(Int(op)!)
            }
        }

        return score.reduce(0, +)
    }
}
