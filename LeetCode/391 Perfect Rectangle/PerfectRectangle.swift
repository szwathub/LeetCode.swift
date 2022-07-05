//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: PerfectRectangle.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/51
//  History:
//      2021/11/16: Created by szwathub on 2021/11/16
//

import Foundation

class PerfectRectangle {
    func isRectangleCover(_ rectangles: [[Int]]) -> Bool {
        var area = 0
        var minX = rectangles[0][0]
        var minY = rectangles[0][1]
        var maxX = rectangles[0][2]
        var maxY = rectangles[0][3]
        var count = [String: Int]()

        for rectangle in rectangles {
            let (x, y, a, b) = (rectangle[0], rectangle[1], rectangle[2], rectangle[3])

            area += (a - x) * (b - y)
            minX = min(minX, x)
            minY = min(minY, y)
            maxX = max(maxX, a)
            maxY = max(maxY, b)

            count["\(x)-\(y)", default: 0] += 1
            count["\(x)-\(b)", default: 0] += 1
            count["\(a)-\(y)", default: 0] += 1
            count["\(a)-\(b)", default: 0] += 1
        }

        if area != (maxX - minX) * (maxY - minY)
            || count["\(minX)-\(minY)"] != 1
            || count["\(minX)-\(maxY)"] != 1
            || count["\(maxX)-\(minY)"] != 1
            || count["\(maxX)-\(maxY)"] != 1 {

            return false
        }

        count.removeValue(forKey: "\(minX)-\(minY)")
        count.removeValue(forKey: "\(minX)-\(maxY)")
        count.removeValue(forKey: "\(maxX)-\(minY)")
        count.removeValue(forKey: "\(maxX)-\(maxY)")

        for (_, value) in count where value != 2 && value != 4 {
            return false
        }

        return true
    }
}
