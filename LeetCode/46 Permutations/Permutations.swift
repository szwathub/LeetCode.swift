//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: Permutations.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/30: Created by szwathub on 2022/4/30
//

class Permutations {

    func permute(_ nums: [Int]) -> [[Int]] {
        var answer = [[Int]]()
        var used = [Bool](repeating: false, count: nums.count)
        dfs(nums, 0, [], &answer, &used)

        return answer
    }

    private func dfs(_ nums: [Int], _ begin: Int, _ output: [Int], _ answer: inout [[Int]], _ used: inout [Bool]) {
        if begin == nums.count {
            answer.append(output)
            return
        }

        for (index, number) in nums.enumerated() where !used[index] {
            used[index] = true
            dfs(nums, begin + 1, output + [number], &answer, &used)
            used[index] = false
        }
    }
}
