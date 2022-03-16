//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeZigzagLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/16: Created by szwathub on 2022/3/16
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

                if let right = node.right {
                    quene.append(right)
                }
                if let left = node.left {
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
