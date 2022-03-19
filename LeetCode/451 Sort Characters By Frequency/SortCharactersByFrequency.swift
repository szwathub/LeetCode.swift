//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SortCharactersByFrequency.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class SortCharactersByFrequency {

    public struct Pair {
        var character: Character
        var frequent: Int

        init(_ character: Character, _ frequent: Int) {
            self.character = character
            self.frequent = frequent
        }
    }

    func frequencySort(_ s: String) -> String {
        var map = [Character: Int]()
        for character in s {
            map[character, default: 0] += 1
        }

        var queue = PriorityQueue<Pair>.init { $0.frequent > $1.frequent }
        for (character, frequent) in map {
            queue.enqueue(Pair(character, frequent))
        }

        var answer = ""
        while let pair = queue.dequeue() {
            for _ in 0..<pair.frequent {
                answer.append(pair.character)
            }
        }

        return answer
    }
}
