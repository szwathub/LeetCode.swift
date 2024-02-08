//
// Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: CousinsinBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/cousins-in-binary-tree
//  History:
//      2024/2/8: Created by szwathub on 2024/2/8
//

import Structure

class CousinsinBinaryTree {
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        guard let root = root else { return false }
        var queue = [root]

        var parentX: TreeNode?
        var parentY: TreeNode?
        while !queue.isEmpty {
            var nextLevel: [TreeNode] = []
            for node in queue {
                if let left = node.left {
                    if left.val == x {
                        parentX = node
                    } else if left.val == y {
                        parentY = node
                    }
                    nextLevel.append(left)
                }
                if let right = node.right {
                    if right.val == x {
                        parentX = node
                    } else if right.val == y {
                        parentY = node
                    }
                    nextLevel.append(right)
                }
            }
            if let parentX = parentX, let parentY = parentY {
                return parentX.val != parentY.val
            }

            parentX = nil
            parentY = nil
            queue = nextLevel
        }

        return false
    }
}
