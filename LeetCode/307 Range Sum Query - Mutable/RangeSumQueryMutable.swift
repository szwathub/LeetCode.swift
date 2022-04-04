//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RangeSumQueryMutable.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/4: Created by szwathub on 2022/4/4
//

class RangeSumQueryMutable {

    var length: Int
    var tree: [Int]
    var nums: [Int]

    init(_ nums: [Int]) {
        self.length = nums.count
        self.tree = [Int](repeating: 0, count: nums.count + 1)
        self.nums = nums
        for index in 0..<length {
            add(index + 1, nums[index])
        }
    }

    func update(_ index: Int, _ val: Int) {
        add(index + 1, val - nums[index])
        nums[index] = val
    }

    func sumRange(_ left: Int, _ right: Int) -> Int {
        return prefixSum(right + 1) - prefixSum(left)
    }

    private func lowbit(_ number: Int) -> Int {
        return number & -number
    }

    private func add(_ index: Int, _ val: Int) {
        var index = index
        while index <= length {
            tree[index] += val
            index += lowbit(index)
        }
    }

    private func prefixSum(_ index: Int) -> Int {
        var answer = 0
        var index = index
        while index > 0 {
            answer += tree[index]
            index -= lowbit(index)
        }

        return answer
    }
}
