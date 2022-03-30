//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindServersThatHandledMostNumberofRequests.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/30: Created by szwathub on 2022/3/30
//

import Structure

class FindServersThatHandledMostNumberofRequests {
    func busiestServers(_ k: Int, _ arrival: [Int], _ load: [Int]) -> [Int] {
        var available = PriorityQueue<Int>.init(sort: <)
        for index in 0..<k {
            available.enqueue(index)
        }

        var busy = PriorityQueue<(Int, Int)> { $0.0 < $1.0 } // (finish time, index)
        var requests = [Int](repeating: 0, count: k)

        for (index, time) in arrival.enumerated() {
            while let server = busy.peek(), server.0 <= time {
                let id = server.1
                busy.dequeue()
                available.enqueue(index + ((id - index) % k + k) % k)
            }

            if let server = available.dequeue() {
                let id = server % k
                requests[id] += 1
                busy.enqueue((arrival[index] + load[index], id))
            }
        }

        let maxRequest = requests.max()
        var answer = [Int]()
        for (index, request) in requests.enumerated() where request == maxRequest {
            answer.append(index)
        }

        return answer
    }
}
