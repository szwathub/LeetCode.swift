//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: InvertBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class InvertBinaryTree {
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        let left = invertTree(root.left)
        let right = invertTree(root.right)

        root.left  = right
        root.right = left

        return root
    }
}
