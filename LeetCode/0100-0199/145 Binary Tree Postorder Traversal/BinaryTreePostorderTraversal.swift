//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreePostorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/binary-tree-postorder-traversal
//  History:
//      2024/2/12: Created by szwathub on 2024/2/12
//

import Structure

class BinaryTreePostorderTraversal {
    func postorderTraversal(_ root: TreeNode?) -> [Int] {
        var stack = [TreeNode]()
        var answer = [Int]()
        var node: TreeNode? = root
        var prev: TreeNode?

        while !stack.isEmpty || node != nil {
            while let current = node {
                stack.append(current)
                node = current.left
            }

            let top = stack.removeLast()
            if top.right == nil || top.right === prev {
                answer.append(top.val)
                prev = top
                node = nil
            } else {
                stack.append(top)
                node = top.right
            }
        }

        return answer
    }
}
