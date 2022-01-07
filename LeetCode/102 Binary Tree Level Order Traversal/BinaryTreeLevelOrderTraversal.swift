//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class BinaryTreeLevelOrderTraversal {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var quene = [TreeNode]()
        var answer = [[Int]]()
        quene.append(root)

        while !quene.isEmpty {
            var level = [Int]()
            for _ in 0..<quene.count {
                let node = quene.removeFirst()
                level.append(node.val)

                if let left = node.left {
                    quene.append(left)
                }
                if let right = node.right {
                    quene.append(right)
                }
            }
            answer.append(level)
        }

        return answer
    }
}
