//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LowestCommonAncestorofaBinarySearchTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/8: Created by szwathub on 2022/1/8
//

import Structure

class LowestCommonAncestorofaBinarySearchTree {
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        let p = findPath(in: root, for: p)
        let q = findPath(in: root, for: q)

        let count = min(p.count, q.count)
        var answer: TreeNode?
        for index in 0..<count where p[index].val == q[index].val {
            answer = p[index]
        }

        return answer
    }

    func findPath(in root: TreeNode?, for target: TreeNode?) -> [TreeNode] {
        var path = [TreeNode]()
        var node: TreeNode? = root

        if let target = target {
            while let current = node {
                path.append(current)

                if current.val == target.val {
                    break
                } else if target.val < current.val {
                    node = current.left
                } else {
                    node = current.right
                }
            }
        }

        return path
    }
}
