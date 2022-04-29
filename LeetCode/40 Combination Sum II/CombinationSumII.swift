//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CombinationSumII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/29: Created by szwathub on 2022/4/29
//

class CombinationSumII {

    var sequence = [Int]()
    var answer = [[Int]]()

    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        sequence = candidates.sorted(by: >)
        answer = [[Int]]()

        helper([], 0, target)

        return answer
    }

    private func helper(_ combination: [Int], _ begin: Int, _ target: Int) {
        if target == 0 {
            answer.append(combination)
            return
        }

        guard begin != sequence.count else {
            return
        }

        for index in begin..<sequence.count where sequence[index] <= target {
            if index > begin && sequence[index] == sequence[index - 1] {
                continue
            }

            let value = sequence[index]
            helper(combination + [value], index + 1, target - value)
        }
    }
}
