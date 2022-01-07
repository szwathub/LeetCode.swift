//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: InsertintoaBinarySearchTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class InsertintoaBinarySearchTree {
    func insertIntoBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else {
            return TreeNode(val)
        }

        var node: TreeNode? = root
        while let current = node {
            if val < current.val {
                if current.left == nil {
                    current.left = TreeNode(val)
                    break
                } else {
                    node = current.left
                }
            } else {
                if current.right == nil {
                    current.right = TreeNode(val)
                    break
                } else {
                    node = current.right
                }
            }
        }

        return root
    }
}
