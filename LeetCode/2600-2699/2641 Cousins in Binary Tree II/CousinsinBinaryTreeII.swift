//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: CousinsinBinaryTreeII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/cousins-in-binary-tree-ii
//  History:
//      2024/2/7: Created by szwathub on 2024/2/7
//


class CousinsinBinaryTreeII {

    func replaceValueInTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else { return nil }
        root.val = 0
        var queue: [TreeNode] = [root]

        while !queue.isEmpty {
            var nextLevel: [TreeNode] = []
            var nextSum = 0
            for node in queue {
                if let left = node.left {
                    nextSum += left.val
                    nextLevel.append(left)
                }
                if let right = node.right {
                    nextSum += right.val
                    nextLevel.append(right)
                }
            }

            for node in queue {
                let childSum = (node.left?.val ?? 0) + (node.right?.val ?? 0)
                if let left = node.left {
                    left.val = nextSum - childSum
                }
                if let right = node.right {
                    right.val = nextSum - childSum
                }
            }

            queue = nextLevel
        }

        return root
    }
}
