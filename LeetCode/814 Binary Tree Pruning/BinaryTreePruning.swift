//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreePruning.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/339
//  History:
//      2022/7/21: Created by szwathub on 2022/7/21
//

import Structure

class BinaryTreePruning {
    func pruneTree(_ root: TreeNode?) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        root.left = pruneTree(root.left)
        root.right = pruneTree(root.right)

        if root.left == nil && root.right == nil && root.val == 0 {
            return nil
        }

        return root
    }
}
