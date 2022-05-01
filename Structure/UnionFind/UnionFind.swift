//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: UnionFind.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

public class UnionFind {

    public var setCount: Int

    private var parents: [Int]

    public init(_ capacity: Int) {
        self.setCount = capacity
        self.parents  = Array(0..<capacity)
    }

    public func union(_ a: Int, _ b: Int) {
        let pa = find(a)
        let pb = find(b)

        if pa != pb {
            setCount -= 1
        }

        parents[pa] = pb
    }

    public func find(_ index: Int) -> Int {
        var current: Int = index

        while current != parents[current] {
            parents[current] = parents[parents[current]]
            current = parents[current]
        }

        return current
    }

    public func check(_ a: Int, _ b: Int) -> Bool {
        return find(a) == find(b)
    }
}
