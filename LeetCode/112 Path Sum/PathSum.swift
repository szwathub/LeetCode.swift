//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PathSum.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class PathSum {
    func hasPathSum(_ root: TreeNode?, _ targetSum: Int) -> Bool {
        guard let root = root else {
            return false
        }

        var queue = [TreeNode]()
        var sum   = [Int]()
        queue.append(root)
        sum.append(root.val)

        while !queue.isEmpty {
            let current = queue.removeFirst()
            let value = sum.removeFirst()

            if current.left == nil && current.right == nil {
                if value == targetSum {
                    return true
                }
                continue
            }

            if let left = current.left {
                queue.append(left)
                sum.append(left.val + value)
            }
            if let right = current.right {
                queue.append(right)
                sum.append(right.val + value)
            }
        }

        return false
    }
}
