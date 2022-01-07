//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MaximumDepthofBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class MaximumDepthofBinaryTree {
    func maxDepth(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        var quene = [TreeNode]()
        var answer = 1
        quene.append(root)

        while !quene.isEmpty {
            var level = [TreeNode]()
            for node in quene {
                if let left = node.left {
                    level.append(left)
                }
                if let right = node.right {
                    level.append(right)
                }
            }

            quene.removeAll()
            quene = level
            answer += quene.isEmpty ? 0 : 1
        }

        return answer
    }
}
