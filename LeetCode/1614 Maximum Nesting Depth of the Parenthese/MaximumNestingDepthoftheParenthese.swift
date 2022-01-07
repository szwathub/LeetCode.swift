//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MaximumNestingDepthoftheParenthese.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

class MaximumNestingDepthoftheParenthese {
    func maxDepth(_ s: String) -> Int {
        var answer = 0
        var stack = [Character]()

        for character in s {
            switch character {
                case "(":
                    stack.append(character)
                case ")":
                    answer = max(answer, stack.count)
                    _ = stack.popLast()
                default:
                    break
            }
        }

        return answer
    }
}
