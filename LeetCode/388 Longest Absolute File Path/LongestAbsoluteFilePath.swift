//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LongestAbsoluteFilePath.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/20: Created by szwathub on 2022/4/20
//

class LongestAbsoluteFilePath {
    func lengthLongestPath(_ input: String) -> Int {
        return helper(Array(input))
    }

    private func helper(_ input: [Character]) -> Int {
        var answer = 0, index = 0, count = input.count
        var level = [Int](repeating: 0, count: input.count + 1)
        while index < count {
            var depth = 1
            while index < count && input[index] == "\t" {
                depth += 1
                index += 1
            }

            var length = 0
            var isFile = false
            while index < count && input[index] != "\n" {
                if input[index] == "." {
                    isFile = true
                }
                length += 1
                index += 1
            }
            index += 1

            if depth > 1 {
                length += level[depth - 1] + 1
            }
            if isFile {
                answer = max(answer, length)
            } else {
                level[depth] = length
            }
        }

        return answer
    }
}
