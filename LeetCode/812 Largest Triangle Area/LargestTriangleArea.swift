//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LargestTriangleArea.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/15: Created by szwathub on 2022/5/15
//

class LargestTriangleArea {
    func largestTriangleArea(_ points: [[Int]]) -> Double {
        var ans: Double = 0
        for first in stride(from: 0, to: points.count, by: 1) {
            for second in stride(from: first + 1, to: points.count, by: 1) {
                let x1 = points[second][0] - points[first][0]
                let y1 = points[second][1] - points[first][1]
                for third in stride(from: second + 1, to: points.count, by: 1) {
                    let x2 = points[third][0] - points[first][0]
                    let y2 = points[third][1] - points[first][1]

                    let area = triangleArea(x1, y1, x2, y2)
                    ans = max(ans, area)
                }
            }
        }

        return ans
    }

    private func triangleArea(_ x1: Int, _ y1: Int, _ x2: Int, _ y2: Int) -> Double {
        return abs(Double(x1 * y2 - x2 * y1)) / 2
    }
}
