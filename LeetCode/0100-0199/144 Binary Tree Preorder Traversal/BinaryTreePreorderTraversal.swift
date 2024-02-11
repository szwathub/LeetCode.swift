//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreePreorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/binary-tree-preorder-traversal
//  History:
//      2024/2/101: Created by szwathub on 2024/2/11
//

import Structure

class BinaryTreePreorderTraversal {
    func preorderTraversal(_ root: TreeNode?) -> [Int] {
        var stack = [TreeNode]()
        var answer = [Int]()
        var node: TreeNode? = root

        while !stack.isEmpty || node != nil {
            while let current = node {
                answer.append(current.val)
                stack.append(current)
                node = current.left
            }

            node = stack.popLast()
            node = node?.right
        }

        return answer
    }
}
