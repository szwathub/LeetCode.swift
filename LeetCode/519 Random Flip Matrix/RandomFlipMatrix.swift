//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: RandomFlipMatrix.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/27: Created by szwathub on 2021/11/27
//

class RandomFlipMatrix {

    private var m: Int
    private var n: Int
    private var total: Int

    private var map = [Int: Int]()

    init(_ m: Int, _ n: Int) {
        self.m = m
        self.n = n
        self.total = m * n
    }

    func flip() -> [Int] {
        let random = (0..<total).randomElement()!
        total -= 1

        let index = realIndex(forKey: random)
        map.updateValue(realIndex(forKey: total), forKey: random)

        return [index / n, index % n]
    }

    func reset() {
        total = m * n
        map.removeAll()
    }

    private func realIndex(forKey key: Int) -> Int {
        return map[key, default: key]
    }
}
