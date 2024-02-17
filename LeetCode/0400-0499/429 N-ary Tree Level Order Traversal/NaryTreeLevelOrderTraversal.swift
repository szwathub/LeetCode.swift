//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: NaryTreeLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/n-ary-tree-level-order-traversal
//  History:
//      2024/2/17: Created by szwathub on 2024/2/17
//

import Structure

class NaryTreeLevelOrderTraversal {
    func levelOrder(_ root: Node?) -> [[Int]] {
        guard let root = root else { return [] }

        var queue: [Node] = [root]
        var answer = [[Int]]()
        while !queue.isEmpty {
            var list = [Node]()
            var level = [Int]()
            for node in queue {
                level.append(node.val)

                for child in node.children {
                    list.append(child)
                }
            }

            queue = list
            answer.append(level)
        }

        return answer
    }
}
