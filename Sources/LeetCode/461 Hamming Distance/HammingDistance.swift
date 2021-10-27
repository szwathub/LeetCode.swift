//
//  File name: HammingDistance.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/27: Created by szwathub on 2021/10/27
//

import Foundation

class HammingDistance {
    func hammingDistance(_ x: Int, _ y: Int) -> Int {
        var xor = x ^ y
        var answer = 0

        while xor != 0 {
            answer += xor & 0b1
            xor = xor >> 1
        }

        return answer
    }
}
