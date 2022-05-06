//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NumberofRecentCalls.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/6: Created by szwathub on 2022/5/6
//

class RecentCounter {

    var queue: [Int]
    
    init() {
        queue = []
    }
    
    func ping(_ t: Int) -> Int {
        queue.append(t)
        while let first = queue.first, first < t - 3000 {
            queue.removeFirst()
        }

        return queue.count
    }
}
