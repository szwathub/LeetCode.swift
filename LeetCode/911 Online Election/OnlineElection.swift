//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: OnlineElection.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/11: Created by szwathub on 2021/12/11
//

class TopVotedCandidate {

    var ranks = [Int]()
    var times: [Int]

    init(_ persons: [Int], _ times: [Int]) {
        var count: [Int: Int] = [-1: -1]
        var current = -1
        var tickets = -1

        for person in persons {
            count[person, default: 0] += 1
            if let count = count[person], count >= tickets {
                current = person
                tickets = count
            }
            ranks.append(current)
        }

        self.times = times
    }

    func q(_ t: Int) -> Int {
        var left = 0
        var right = times.count - 1

        while left < right {
            let mid = (left + right  + 1) >> 1
            if times[mid] <= t {
                left = mid
            } else {
                right = mid - 1
            }
        }

        return ranks[left]
    }
}
