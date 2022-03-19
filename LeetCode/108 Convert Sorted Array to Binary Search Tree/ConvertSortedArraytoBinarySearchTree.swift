//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ConvertSortedArraytoBinarySearchTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class ConvertSortedArraytoBinarySearchTree {
    func sortedArrayToBST(_ nums: [Int]) -> TreeNode? {
        return helper(nums, 0, nums.count - 1)
    }

    private func helper(_ nums: [Int], _ left: Int, _ right: Int) -> TreeNode? {
        guard left <= right else {
            return nil
        }

        let mid = (left + right) / 2
        let root = TreeNode(nums[mid])
        root.left = helper(nums, left, mid - 1)
        root.right = helper(nums, mid + 1, right)

        return root
    }
}
