//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: RangeSumofBST.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/range-sum-of-bst
//  History:
//      2024/2/26: Created by szwathub on 2024/2/26
//

import Structure

class RangeSumofBST {
    func rangeSumBST(_ root: TreeNode?, _ low: Int, _ high: Int) -> Int {
        guard let root = root else { return 0 }
        if root.val > high {
            return rangeSumBST(root.left, low, high)
        }
        if root.val < low {
            return rangeSumBST(root.right, low, high)
        }

        return root.val + rangeSumBST(root.left, low, high) + rangeSumBST(root.right, low, high)
    }
}
