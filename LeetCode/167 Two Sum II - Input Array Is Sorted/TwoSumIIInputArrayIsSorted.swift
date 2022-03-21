//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: TwoSumIIInputArrayIsSorted.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/21: Created by szwathub on 2022/3/21
//

class TwoSumIIInputArrayIsSorted {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var low = 0, high = numbers.count - 1
        var answer = [Int]()

        while low < high {
            let sum = numbers[low] + numbers[high]

            if sum > target {
                high -= 1
            } else if sum < target {
                low += 1
            } else {
                answer = [low + 1, high + 1]
                break
            }
        }

        return answer
    }
}
