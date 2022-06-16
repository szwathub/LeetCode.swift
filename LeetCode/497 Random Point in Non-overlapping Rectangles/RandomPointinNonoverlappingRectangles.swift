//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: RandomPointinNonoverlappingRectangles.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/9: Created by szwathub on 2022/6/9
//

class RandomPointinNonoverlappingRectangles {

    var rects: [[Int]]

    var prefix: [Int]

    init(_ rects: [[Int]]) {
        self.rects = rects
        self.prefix = [Int](repeating: 0, count: rects.count + 1)
        self.prefix[0] = 0
        for (index, rect) in rects.enumerated() {
            let (a, b, x, y) = (rect[0], rect[1], rect[2], rect[3])
            self.prefix[index + 1] = self.prefix[index] + (x - a + 1) * (y - b + 1)
        }
    }

    func pick() -> [Int] {
        let target = Int.random(in: 1...prefix[prefix.count - 1])
        let index = search(target) - 1
        let rect = rects[index]
        let (a, b, x, y) = (rect[0], rect[1], rect[2], rect[3])

        return [Int.random(in: a...x), Int.random(in: b...y)]
    }

    func search(_ target: Int) -> Int {
        print(target)
        var left = 0, right = prefix.count - 1
        while left < right {
            let mid = (left + right) >> 1
            if prefix[mid] >= target {
                right = mid
            } else {
                left = mid + 1
            }
        }

        return left
    }
}
