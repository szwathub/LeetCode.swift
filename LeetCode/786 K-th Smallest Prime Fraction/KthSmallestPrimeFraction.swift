//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: KthSmallestPrimeFraction.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/29: Created by szwathub on 2021/11/29
//

class KthSmallestPrimeFraction {
    func kthSmallestPrimeFraction(_ arr: [Int], _ k: Int) -> [Int] {
        var pairs = [(Int, Int)]()

        for i in 0..<arr.count {
            for j in (i + 1)..<arr.count {
                pairs.append((arr[i], arr[j]))
            }
        }

        pairs.sort { (pair0, pair1) in
            let (x2, y2) = pair0
            let (x1, y1) = pair1
            return x1 * y2 > x2 * y1
        }

        return [pairs[k - 1].0, pairs[k - 1].1]
    }
}
