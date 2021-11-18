//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: NextGreaterElementI.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/10/26: Created by szwathub on 2021/10/26
//

import Foundation

class NextGreaterElementI {
    func nextGreaterElement(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var answer = [Int]()

        for target in nums1 {
            var ans = -1
            var begin = false
            for compare in nums2 {
                if compare == target {
                    begin = true
                    continue
                }
                if begin && compare > target {
                    ans = compare
                    break
                }
            }

            answer.append(ans)
        }

        return answer
    }

    func nextGreaterElementII(_ nums1: [Int], _ nums2: [Int]) -> [Int] {
        var dict = [Int: Int]()
        var stack = [Int]()

        for target in nums2.reversed() {
            while !stack.isEmpty && target >= stack.last! {
                stack.removeLast()
            }

            if let ans = stack.last {
                dict.updateValue(ans, forKey: target)
            } else {
                dict.updateValue(-1, forKey: target)
            }

            stack.append(target)
        }

        return nums1.map { dict[$0]! }
    }
}
