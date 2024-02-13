//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: VerticalOrderTraversalofaBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/vertical-order-traversal-of-a-binary-tree
//  History:
//      2024/2/13: Created by szwathub on 2024/2/13
//

import Structure

class VerticalOrderTraversalofaBinaryTree {

    fileprivate typealias Pair = (col: Int, row: Int, value: Int)

    func verticalTraversal(_ root: TreeNode?) -> [[Int]] {
        var nodes: [Pair] = []
        func dfs(root: TreeNode?, row: Int, col: Int) {
            guard let root = root else { return }
            nodes.append((col, row, root.val))
            dfs(root: root.left, row: row + 1, col: col - 1)
            dfs(root: root.right, row: row + 1, col: col + 1)
        }

        dfs(root: root, row: 0, col: 0)
        nodes.sort {
            if $0.col != $1.col {
                return $0.col < $1.col
            } else if $0.row != $1.row {
                return $0.row < $1.row
            } else {
                return $0.value < $1.value
            }
        }

        var ans: [[Int]] = []
        var lastCol: Int?
        for pair in nodes {
            if pair.col != lastCol {
                lastCol = pair.col
                ans.append([])
            }

            var last = ans[ans.count - 1]
            last.append(pair.value)
            ans[ans.count - 1] = last
        }

        return ans
    }
}
