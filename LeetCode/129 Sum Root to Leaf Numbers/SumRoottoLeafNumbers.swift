//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SumRoottoLeafNumbers.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/30: Created by szwathub on 2022/4/30
//

import Structure

class SumRoottoLeafNumbers {
    func sumNumbers(_ root: TreeNode?) -> Int {
        return dfs(root, 0)
    }

    private func dfs(_ root: TreeNode?, _ number: Int) -> Int {
        guard let root = root else {
            return 0
        }

        let number = number * 10 + root.val
        if root.left == nil && root.right == nil {
            return number
        }

        return dfs(root.left, number) + dfs(root.right, number)
    }
}
