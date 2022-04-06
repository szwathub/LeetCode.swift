//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumHeightTrees.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/6: Created by szwathub on 2022/4/6
//

class MinimumHeightTrees {
    func findMinHeightTrees(_ n: Int, _ edges: [[Int]]) -> [Int] {
        guard n != 1 else {
            return [0]
        }

        var graph = [[Int]](repeating: [], count: n)
        var deg = [Int](repeating: 0, count: n)
        for edge in edges {
            graph[edge[0]].append(edge[1])
            graph[edge[1]].append(edge[0])
            deg[edge[0]] += 1
            deg[edge[1]] += 1
        }

        var queue = deg.enumerated().filter { $0.element == 1 }.map { $0.offset }
        var remain = n
        while remain > 2 {
            remain -= queue.count
            var level = [Int]()
            for x in queue {
                for y in graph[x] {
                    deg[y] -= 1
                    if deg[y] == 1 {
                        level.append(y)
                    }
                }
            }
            queue = level
        }

        return queue
    }
}
