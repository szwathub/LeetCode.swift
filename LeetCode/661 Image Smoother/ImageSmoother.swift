//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ImageSmoother.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/24: Created by szwathub on 2022/3/24
//

class ImageSmoother {
    func imageSmoother(_ img: [[Int]]) -> [[Int]] {
        let m = img.count, n = img[0].count
        var answer = [[Int]](repeating: [Int](repeating: 0, count: n), count: m)

        for i in 0..<m {
            for j in 0..<n {
                var count = 0, sum = 0
                for x in i - 1...i + 1 {
                    for y in j - 1...j + 1 {
                        if x >= 0 && x < m && y >= 0 && y < n {
                            count += 1
                            sum += img[x][y]
                        }
                    }
                }
                answer[i][j] = sum / count
            }
        }

        return answer
    }
}
