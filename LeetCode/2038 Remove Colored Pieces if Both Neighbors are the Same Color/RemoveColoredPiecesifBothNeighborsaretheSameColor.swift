//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RemoveColoredPiecesifBothNeighborsaretheSameColor.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/22: Created by szwathub on 2022/3/22
//

class RemoveColoredPiecesifBothNeighborsaretheSameColor {
    func winnerOfGame(_ colors: String) -> Bool {
        var alice = 0, bob = 0
        var current: Character = "C"
        var count = 0

        for character in colors {
            if character != current {
                current = character
                count = 1
            } else {
                count += 1
                if count >= 3 {
                    if current == "A" {
                        alice += 1
                    } else {
                        bob += 1
                    }
                }
            }
        }

        return alice > bob
    }
}
