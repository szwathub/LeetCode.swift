//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeZigzagLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/binary-tree-zigzag-level-order-traversal
//  History:
//      2024/2/16: Created by szwathub on 2024/2/16
//

class BinaryTreeZigzagLevelOrderTraversal {
    func zigzagLevelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var flag = true
        var answer = [[Int]]()
        var quene = [TreeNode]()
        quene.append(root)

        while !quene.isEmpty {
            var level = [Int]()

            for _ in 0..<quene.count {
                let node = quene.removeFirst()
                level.append(node.val)

                if let right = node.left {
                    quene.append(right)
                }
                if let left = node.right {
                    quene.append(left)
                }
            }
            if flag {
                answer.append(level)
            } else {
                answer.append(level.reversed())
            }
            flag = !flag
        }

        return answer
    }
}
