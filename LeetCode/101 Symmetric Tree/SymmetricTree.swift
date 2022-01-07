//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SymmetricTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class SymmetricTree {
    func isSymmetric(_ root: TreeNode?) -> Bool {
        guard let root = root else {
            return true
        }

        return check(root, root)
    }

    private func check(_ left: TreeNode?, _ right: TreeNode?) -> Bool {
        if left == nil && right == nil {
            return true
        }

        guard let left = left, let right = right else {
            return false
        }

        if left.val != right.val {
            return false
        }
        if check(left.left, right.right) == false {
            return false
        }
        if check(left.right, right.left) == false {
            return false
        }

        return true
    }
}
