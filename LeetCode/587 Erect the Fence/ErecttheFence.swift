//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ErecttheFence.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/23: Created by szwathub on 2022/4/23
//

class ErecttheFence {
    func outerTrees(_ trees: [[Int]]) -> [[Int]] {
        guard trees.count >= 4 else {
            return trees
        }

        let sorted = trees.sorted { (a, b) in
            if a[0] == b[0] {
                return a[1] < b[1]
            }

            return a[0] < b[0]
        }

        var hull = [0]
        var used = [Bool](repeating: false, count: trees.count)

        for index in 1..<trees.count {
            while hull.count > 1
                    && cross(sorted[hull[hull.count - 2]], sorted[hull[hull.count - 1]], sorted[index]) < 0 {

                used[hull[hull.count - 1]] = false
                hull.removeLast()
            }

            used[index] = true
            hull.append(index)
        }

        let m = hull.count
        for index in stride(from: trees.count - 2, through: 0, by: -1) {
            if !used[index] {
                while hull.count > m
                        && cross(sorted[hull[hull.count - 2]], sorted[hull[hull.count - 1]], sorted[index]) < 0 {

                    used[hull[hull.count - 1]] = false
                    hull.removeLast()
                }

                used[index] = true
                hull.append(index)
            }
        }

        hull.removeLast()
        var answer = [[Int]]()
        for index in hull {
            answer.append(sorted[index])
        }

        return answer
    }

    private func cross(_ p: [Int], _ q: [Int], _ r: [Int]) -> Int {
        return (q[0] - p[0]) * (r[1] - q[1]) - (q[1] - p[1]) * (r[0] - q[0])
    }
}
