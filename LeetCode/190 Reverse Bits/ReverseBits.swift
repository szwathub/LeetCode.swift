//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: ReverseBits.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/27: Created by szwathub on 2021/10/27
//

class ReverseBits {
    let M1: UInt32 = 0b01010101010101010101010101010101
    let M2: UInt32 = 0b00110011001100110011001100110011
    let M4: UInt32 = 0b00001111000011110000111100001111
    let M8: UInt32 = 0b00000000111111110000000011111111

    func reverseBits(_ n: Int) -> Int {
        var bits = UInt32(n)

        bits = bits >> 1 & M1 | (bits & M1) << 1
        bits = bits >> 2 & M2 | (bits & M2) << 2
        bits = bits >> 4 & M4 | (bits & M4) << 4
        bits = bits >> 8 & M8 | (bits & M8) << 8

        return Int(bits >> 16 | bits << 16)
    }
}
