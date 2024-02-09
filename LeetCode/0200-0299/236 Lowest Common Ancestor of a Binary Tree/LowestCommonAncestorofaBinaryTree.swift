//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: LowestCommonAncestorofaBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/lowest-common-ancestor-of-a-binary-tree
//  History:
//      2024/2/9: Created by szwathub on 2024/2/9
//

import Structure

class LowestCommonAncestorofaBinaryTree {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        var parents = [Int: TreeNode]()
        var visited = Set<Int>()
        dfs(root: root, parents: &parents)

        var p = p
        while let value = p?.val {
            visited.insert(value)
            p = parents[value]
        }

        var q = q
        while let value = q?.val {
            if visited.contains(value) {
                return q
            }
            q = parents[value]
        }

        return nil
    }

    private func dfs(root: TreeNode?, parents: inout [Int: TreeNode]) {
        if let left = root?.left {
            parents[left.val] = root
            dfs(root: left, parents: &parents)
        }
        if let right = root?.right {
            parents[right.val] = root
            dfs(root: right, parents: &parents)
        }
    }
}
