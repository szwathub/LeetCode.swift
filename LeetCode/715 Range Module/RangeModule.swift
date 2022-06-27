//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RangeModule.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/305
//  History:
//      2022/6/20: Created by szwathub on 2022/6/20
//

final public class SegmentTree {

    public var range: CountableClosedRange<Int>

    public var isTracked: Bool = false

    public var lazy: Int = 0

    public var left: SegmentTree?

    public var right: SegmentTree?

    public init(_ range: CountableClosedRange<Int>) {
        self.range = range
    }

    public func update(_ range: CountableClosedRange<Int>, _ val: Int) {
        if range == self.range {
            isTracked = 1 == val
            lazy = val
            return
        }

        pushDown()
        let mid = (self.range.lowerBound + self.range.upperBound) >> 1
        if range.upperBound <= mid {
            left?.update(range, val)
        } else if range.lowerBound > mid {
            right?.update(range, val)
        } else {
            left?.update(range.lowerBound...mid, val)
            right?.update(mid + 1...range.upperBound, val)
        }
        pushUp()
    }

    public func query(_ range: CountableClosedRange<Int>) -> Bool {
        if range == self.range {
            return isTracked
        }

        pushDown()
        let mid = (self.range.lowerBound + self.range.upperBound) >> 1
        var query = false
        if range.upperBound <= mid, let left = left {
            query = left.query(range)
        } else if range.lowerBound > mid, let right = right {
            query = right.query(range)
        } else {
            if let left = left {
                query = left.query(range.lowerBound...mid)
            }
            if let right = right {
                query = query && right.query(mid + 1...range.upperBound)
            }
        }

        return query
    }

    private func pushUp() {
        if let left = left, let right = right {
            isTracked = left.isTracked && right.isTracked
        }
    }

    private func pushDown() {
        let mid = (range.lowerBound + range.upperBound) >> 1

        if left == nil {
            left = SegmentTree(range.lowerBound...mid)
        }
        if right == nil {
            right = SegmentTree(mid + 1...range.upperBound)
        }

        if lazy != 0 {
            left?.lazy = lazy
            right?.lazy = lazy
            left?.isTracked = 1 == lazy
            right?.isTracked = 1 == lazy
            lazy = 0
        }
    }
}

class RangeModule {

    let tree: SegmentTree

    init() {
        tree = SegmentTree(1...1_000_000_000)
    }

    func addRange(_ left: Int, _ right: Int) {
        tree.update(left...right - 1, 1)
    }

    func queryRange(_ left: Int, _ right: Int) -> Bool {
        return tree.query(left...right - 1)
    }

    func removeRange(_ left: Int, _ right: Int) {
        tree.update(left...right - 1, 2)
    }
}
