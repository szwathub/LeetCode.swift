//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: FindAllAnagramsInaString.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/28: Created by szwathub on 2021/11/28
//

class FindAllAnagramsInaString {
    func findAnagrams(_ s: String, _ p: String) -> [Int] {
        guard s.count >= p.count else {
            return []
        }

        let sArray = Array(s)
        let pArray = Array(p)
        let length = p.count

        var sCount = Array(repeating: 0, count: 26)
        var pCount = Array(repeating: 0, count: 26)
        for index in 0..<length {
            sCount[Int(sArray[index].asciiValue! - 97)] += 1
            pCount[Int(pArray[index].asciiValue! - 97)] += 1
        }

        var answer = [Int]()
        if pCount.elementsEqual(sCount) {
            answer.append(0)
        }

        for index in 0..<(s.count - length) {
            sCount[Int(sArray[index].asciiValue! - 97)] -= 1
            sCount[Int(sArray[index + length].asciiValue! - 97)] += 1

            if pCount.elementsEqual(sCount) {
                answer.append(index + 1)
            }
        }

        return answer
    }
}
