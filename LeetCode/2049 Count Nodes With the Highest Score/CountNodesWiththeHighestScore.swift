//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CountNodesWiththeHighestScore.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/11: Created by szwathub on 2022/3/11
//

class CountNodesWiththeHighestScore {

    private var tree = [[Int]]()
    private var best = 0
    private var answer = 0
    private var n = 0

    func countHighestScoreNodes(_ parents: [Int]) -> Int {
        n = parents.count
        tree = [[Int]](repeating: [Int](), count: n)
        best = 0
        answer = 0

        for (index, parent) in parents.enumerated() where parent != -1 {
            tree[parent].append(index)
        }

        dfs(0)

        return answer
    }

    @discardableResult
    private func dfs(_ node: Int) -> Int {
        var score = 1
        var count = 0

        for child in tree[node] {
            let branch = dfs(child)
            score *= branch
            count += branch
        }

        if (node != 0) {
            score *= n - count - 1
        }

        if score > best {
            answer = 1
            best = score
        } else if score == best {
            answer += 1
        }

        return count + 1
    }
}
