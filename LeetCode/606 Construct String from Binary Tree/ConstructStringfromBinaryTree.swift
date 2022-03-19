//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ConstructStringfromBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class ConstructStringfromBinaryTree {
    func tree2str(_ root: TreeNode?) -> String {
        return dfs(root)
    }

    private func dfs(_ root: TreeNode?) -> String {
        guard let root = root else {
            return ""
        }

        let (left, right) = (dfs(root.left), dfs(root.right))
        if !left.isEmpty && !right.isEmpty {
            return "\(root.val)(\(left))(\(right))"
        } else if !left.isEmpty {
            return "\(root.val)(\(left))"
        } else if !right.isEmpty {
            return "\(root.val)()(\(right))"
        }

        return "\(root.val)"
    }
}
