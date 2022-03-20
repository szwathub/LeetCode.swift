//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: TheTimeWhentheNetworkBecomesIdle.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/20: Created by szwathub on 2022/3/20
//

class TheTimeWhentheNetworkBecomesIdle {
    func networkBecomesIdle(_ edges: [[Int]], _ patience: [Int]) -> Int {
        var graph = [[Int]](repeating: [], count: patience.count)
        for edge in edges {
            graph[edge[0]].append(edge[1])
            graph[edge[1]].append(edge[0])
        }

        var visited = [Bool](repeating: false, count: patience.count)
        visited[0] = true

        var queue = [Int]()
        queue.append(0)
        var answer = 0
        var dist = 1

        while !queue.isEmpty {
            var level = [Int]()
            for u in queue {
                for v in graph[u] where !visited[v] {
                    visited[v] = true
                    level.append(v)
                    let time = patience[v] * ((2 * dist - 1) / patience[v]) + 2 * dist + 1
                    answer = max(answer, time)
                }
            }
            queue = level
            dist += 1
        }

        return answer
    }
}
