//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: AllElementsinTwoBinarySearchTrees.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/5/1: Created by szwathub on 2022/5/1
//

import Structure

class AllElementsinTwoBinarySearchTrees {
    func getAllElements(_ root1: TreeNode?, _ root2: TreeNode?) -> [Int] {
        var first  = [Int]()
        var second = [Int]()

        inorder(root1, &first)
        inorder(root2, &second)

        var merged = [Int]()
        var p1 = 0, n1 = first.count
        var p2 = 0, n2 = second.count

        while p1 < n1 && p2 < n2 {
            if first[p1] < second[p2] {
                merged.append(first[p1])
                p1 += 1
            } else {
                merged.append(second[p2])
                p2 += 1
            }
        }

        if p1 != n1 {
            merged += first[p1..<n1]
        } else {
            merged += second[p2..<n2]
        }

        return merged
    }

    private func inorder(_ node: TreeNode?, _ list: inout [Int]) {
        guard let node = node else {
            return
        }

        inorder(node.left, &list)
        list.append(node.val)
        inorder(node.right, &list)
    }
}
