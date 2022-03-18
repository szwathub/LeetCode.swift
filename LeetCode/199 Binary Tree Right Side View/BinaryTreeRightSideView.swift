//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeRightSideView.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class BinaryTreeRightSideView {
    func rightSideView(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        var quene = [TreeNode]()
        var answer = [Int]()
        quene.append(root)

        while !quene.isEmpty {
            var level = [TreeNode]()
            for (index, node) in quene.enumerated() {
                if index == quene.count - 1 {
                    answer.append(node.val)
                }

                if let left = node.left {
                    level.append(left)
                }
                if let right = node.right {
                    level.append(right)
                }
            }

            quene = level
        }

        return answer
    }
}
