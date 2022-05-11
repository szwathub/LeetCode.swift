//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SerializeandDeserializeBST.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/11: Created by szwathub on 2022/5/11
//

import Structure

class Codec {
    // Encodes a tree to a single string.
    func serialize(_ root: TreeNode?) -> String {
        return encode(root, "")
    }

    private func encode(_ root: TreeNode?, _ serialize: String) -> String {
        guard let root = root else {
            return ""
        }

        var string = serialize
        string += "\(root.val),"
        string += encode(root.left, serialize)
        string += encode(root.right, serialize)

        return string
    }

    // Decodes your encoded data to tree.
    func deserialize(_ data: String) -> TreeNode? {
        let nums: [Int] = data.split(separator: ",").map { Int($0)! }

        return decode(nums, 0, nums.count - 1)
    }

    private func decode(_ nums: [Int], _ start: Int, _ end: Int) -> TreeNode? {
        guard start <= end else {
            return nil
        }

        let root = TreeNode(nums[start])
        var bound = end + 1
        for i in stride(from: start + 1, through: end, by: 1) {
            if nums[start] > nums[i] {
                continue
            }

            bound = i
            break
        }

        root.left = decode(nums, start + 1, bound - 1)
        root.right = decode(nums, bound, end)

        return root
    }
}
