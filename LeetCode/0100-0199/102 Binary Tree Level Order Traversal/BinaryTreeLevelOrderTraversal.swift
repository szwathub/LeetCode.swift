//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/binary-tree-level-order-traversal
//  History:
//      2024/2/29: Created by szwathub on 2024/2/29
//

import Structure

class BinaryTreeLevelOrderTraversal {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        var ans = [[Int]]()
        root?.levelOrderTraversal({ level, node in
            if level < ans.count {
                ans[level].append(node.val)
            } else {
                ans.append([node.val])
            }
        })

        return ans
    }
}
