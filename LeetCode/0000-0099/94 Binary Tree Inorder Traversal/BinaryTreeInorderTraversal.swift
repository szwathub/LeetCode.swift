//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeInorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//  https://leetcode.cn/problems/binary-tree-inorder-traversal
//  History:
//      2024/2/10: Created by szwathub on 2024/2/10
//

import Structure

class BinaryTreeInorderTraversal {
    func inorderTraversal(_ root: TreeNode?) -> [Int] {
        var stack = [TreeNode]()
        var answer = [Int]()
        var node: TreeNode? = root

        while !stack.isEmpty || node != nil {
            while let current = node {
                stack.append(current)
                node = current.left
            }

            let top = stack.removeLast()
            answer.append(top.val)
            node = top.right
        }

        return answer
    }
}
