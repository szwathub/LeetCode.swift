//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: TwoSumIVInputisaBST.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class TwoSumIVInputisaBST {
    func findTarget(_ root: TreeNode?, _ k: Int) -> Bool {
        guard let root = root else {
            return false
        }

        var map = [Int]()
        var queue = [TreeNode]()
        queue.append(root)

        while !queue.isEmpty {
            let current = queue.removeFirst()
            if map.contains(k - current.val) {
                return true
            }

            map.append(current.val)
            if let left = current.left {
                queue.append(left)
            }
            if let right = current.right {
                queue.append(right)
            }
        }

        return false
    }
}
