//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreePreorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/6: Created by szwathub on 2022/1/6
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
