//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeLevelOrderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class BinaryTreeLevelOrderTraversal {
    func levelOrder(_ root: TreeNode?) -> [[Int]] {
        guard let root = root else {
            return []
        }

        var ans = [[Int]]()
        root.levelOrderTraversal({ level, value in
            if level < ans.count {
                ans[level].append(value)
            } else {
                ans.append([value])
            }
        })

        return ans
    }
}
