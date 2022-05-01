//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: 24Game.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

class TwentyFourGame {

    let TARGET: Double = 24

    func judgePoint24(_ cards: [Int]) -> Bool {
        return backtrack(cards.map { Double($0) })
    }

    private func backtrack(_ cards: [Double]) -> Bool {
        if cards.count == 1 {
            return abs(cards[0] - TARGET) < 1e-6
        }

        for i in 0..<cards.count {
            for j in 0..<cards.count where i != j {
                var res = [Double]()
                for index in 0..<cards.count where index != i && index != j {
                    res.append(cards[index])
                }

                // + * - /
                for op in 0..<4 where op >= 2 || i <= j {
                    if op == 0 {
                        res.append(cards[i] + cards[j])
                    } else if op == 1 {
                        res.append(cards[i] * cards[j])
                    } else if op == 2 {
                        res.append(cards[i] - cards[j])
                    } else {
                        if abs(cards[j]) < 1e-6 {
                            continue
                        } else {
                            res.append(cards[i] / cards[j])
                        }
                    }

                    if backtrack(res) {
                        return true
                    }

                    res.removeLast()
                }
            }
        }

        return false
    }
}
