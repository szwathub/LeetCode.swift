//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeLevelOrderTraversalII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/binary-tree-level-order-traversal-ii
//  History:
//      2024/2/15: Created by szwathub on 2024/2/15
//

import Structure

class BinaryTreeLevelOrderTraversalII {
    func levelOrderBottom(_ root: TreeNode?) -> [[Int]] {
        var ans = [[Int]]()
        root?.levelOrderTraversal({ level, node in
            if level < ans.count {
                ans[level].append(node.val)
            } else {
                ans.append([node.val])
            }
        })

        return ans.reversed()
    }
}
