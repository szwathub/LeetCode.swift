//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: InsertDeleteGetRandom.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/13: Created by szwathub on 2022/4/13
//

class RandomizedSet {

    private var list: [Int]
    private var indices: [Int: Int]

    init() {
        list = []
        indices = [:]
    }

    func insert(_ val: Int) -> Bool {
        guard !indices.contains(where: { $0.key == val }) else {
            return false
        }

        indices[val] = list.count
        list.append(val)

        return true
    }

    func remove(_ val: Int) -> Bool {
        guard let index = indices[val] else {
            return false
        }

        let last = list[list.count - 1]
        list[index] = last
        indices.updateValue(index, forKey: last)
        list.removeLast()
        indices.removeValue(forKey: val)

        return true
    }

    func getRandom() -> Int {
        let index = Int.random(in: 0..<list.count)
        return list[index]
    }
}
