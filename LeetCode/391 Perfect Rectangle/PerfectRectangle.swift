//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: PerfectRectangle.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/16: Created by szwathub on 2021/11/16
//

import Foundation

extension CGPoint: Hashable {
    public func hash(into hasher: inout Hasher) {
        hasher.combine(self.x)
        hasher.combine(self.y)
    }
}

class PerfectRectangle {
    func isRectangleCover(_ rectangles: [[Int]]) -> Bool {
        var area = 0
        var minX = rectangles[0][0]
        var minY = rectangles[0][1]
        var maxX = rectangles[0][2]
        var maxY = rectangles[0][3]
        var count = [CGPoint: Int]()

        for rectangle in rectangles {
            let (x, y, a, b) = (rectangle[0], rectangle[1], rectangle[2], rectangle[3])

            area += (a - x) * (b - y)
            minX = min(minX, x)
            minY = min(minY, y)
            maxX = max(maxX, a)
            maxY = max(maxY, b)

            count[.init(x: x, y: y), default: 0] += 1
            count[.init(x: x, y: b), default: 0] += 1
            count[.init(x: a, y: y), default: 0] += 1
            count[.init(x: a, y: b), default: 0] += 1
        }

        if area != (maxX - minX) * (maxY - minY)
            || count[.init(x: minX, y: minY)] != 1
            || count[.init(x: minX, y: maxY)] != 1
            || count[.init(x: maxX, y: minY)] != 1
            || count[.init(x: maxX, y: maxY)] != 1 {

            return false
        }

        count.removeValue(forKey: .init(x: minX, y: minY))
        count.removeValue(forKey: .init(x: minX, y: maxY))
        count.removeValue(forKey: .init(x: maxX, y: minY))
        count.removeValue(forKey: .init(x: maxX, y: maxY))

        for (_, value) in count where value != 2 && value != 4 {
            return false
        }

        return true
    }
}
