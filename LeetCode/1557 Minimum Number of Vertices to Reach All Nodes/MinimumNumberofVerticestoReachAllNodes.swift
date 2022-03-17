//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MinimumNumberofVerticestoReachAllNodes.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/17: Created by szwathub on 2022/3/17
//

class MinimumNumberofVerticestoReachAllNodes {
    func findSmallestSetOfVertices(_ n: Int, _ edges: [[Int]]) -> [Int] {
        var answer = [Int]()
        var set = Set<Int>()

        for edge in edges {
            set.insert(edge[1])
        }

        for index in 0..<n where !set.contains(index) {
            answer.append(index)
        }

        return answer
    }
}
