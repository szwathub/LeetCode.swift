//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ValidateBinarySearchTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class ValidateBinarySearchTree {
    func isValidBST(_ root: TreeNode?) -> Bool {
        var stack = [TreeNode]()
        var node: TreeNode? = root
        var prev: Int?

        while !stack.isEmpty || node != nil {
            while let current = node {
                stack.append(current)
                node = current.left
            }

            let top = stack.removeLast()

            if let prev = prev, prev >= top.val {
                return false
            }

            prev = top.val
            node = top.right
        }

        return true
    }
}
