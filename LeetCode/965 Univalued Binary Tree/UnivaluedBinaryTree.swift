//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: UnivaluedBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/24: Created by szwathub on 2022/5/24
//

import Structure

class UnivaluedBinaryTree {
    func isUnivalTree(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }

        if let left = root.left {
            if root.val != left.val || !isUnivalTree(left) {
                return false
            }
        }

        if let right = root.right {
            if root.val != right.val || !isUnivalTree(right) {
                return false
            }
        }

        return true
    }
}
