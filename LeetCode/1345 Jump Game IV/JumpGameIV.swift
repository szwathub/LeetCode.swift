//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: JumpGameIV.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/21: Created by szwathub on 2022/1/21
//

class JumpGameIV {
    func minJumps(_ arr: [Int]) -> Int {
        var map = [Int: [Int]]() // value: index
        for index in 0..<arr.count {
            if index - 1 >= 0 && index + 1 < arr.count,
               arr[index - 1] == arr[index] && arr[index] == arr[index + 1] {
                continue
            }

            map[arr[index], default: []].append(index)
        }

        var queue: [(Int, Int)] = [(0, 0)] // index: count
        var visited = Set<Int>()
        visited.insert(0)

        var answer = -1
        while !queue.isEmpty {
            var (index, step) = queue.removeFirst()
            if index == arr.count - 1 {
                answer = step
                break
            }

            let value = arr[index]
            step += 1

            if let list = map[value] {
                for valueIndex in list where !visited.contains(valueIndex) {
                    visited.insert(valueIndex)
                    queue.append((valueIndex, step))
                }
            }

            map.removeValue(forKey: value)
            if index + 1 < arr.count && !visited.contains(index + 1) {
                visited.insert(index + 1)
                queue.append((index + 1, step))
            }
            if index - 1 >= 0 && !visited.contains(index - 1) {
                visited.insert(index - 1)
                queue.append((index - 1, step))
            }
        }

        return answer
    }
}
