//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: NaryTreeLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/8: Created by szwathub on 2022/4/8
//

import Structure

class NaryTreeLevelOrderTraversal {
    func levelOrder(_ root: Node?) -> [[Int]] {
        guard let root = root else {
            return []
        }

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
