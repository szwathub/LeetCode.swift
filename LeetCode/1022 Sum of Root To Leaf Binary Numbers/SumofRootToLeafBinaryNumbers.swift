//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SumofRootToLeafBinaryNumbers.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/30: Created by szwathub on 2022/5/30
//

import Structure

class SumofRootToLeafBinaryNumbers {
    func sumRootToLeaf(_ root: TreeNode?) -> Int {
        return dfs(root, 0)
    }

    private func dfs(_ root: TreeNode?, _ level: Int) -> Int {
        guard let root = root else {
            return 0
        }

        let current = level * 2 + root.val
        if root.left == nil && root.right == nil {
            return current
        }

        return dfs(root.left, current) + dfs(root.right, current)
    }
}
