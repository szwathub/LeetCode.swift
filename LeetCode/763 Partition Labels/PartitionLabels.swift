//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PartitionLabels.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/14: Created by szwathub on 2022/1/14
//

class PartitionLabels {
    func partitionLabels(_ s: String) -> [Int] {
        var map = [Character: Int]()
        for (index, character) in s.enumerated() {
            map[character] = index
        }

        var start = 0
        var end   = 0
        var answer = [Int]()
        for (index, character) in s.enumerated() {
            end = max(end, map[character]!)
            if end == index {
                answer.append(end - start + 1)
                start = end + 1
            }
        }

        return answer
    }
}
