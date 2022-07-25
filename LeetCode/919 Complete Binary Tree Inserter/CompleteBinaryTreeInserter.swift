//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: CompleteBinaryTreeInserter.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/342
//  History:
//      2022/7/25: Created by szwathub on 2022/7/25
//

import Structure

class CBTInserter {

    var root: TreeNode?

    var list: [TreeNode]

    var index = 0

    init(_ root: TreeNode?) {
        self.root = root
        self.list = []
        root?.levelOrderTraversal({ _, node in
            list.append(node)
        })
    }

    func insert(_ val: Int) -> Int {
        let node = TreeNode(val)
        while list[index].left != nil && list[index].right != nil {
            index += 1
        }

        let parent = list[index]
        if parent.left == nil {
            parent.left = node
        } else if parent.right == nil {
            parent.right = node
        }

        list.append(node)

        return parent.val
    }

    func get_root() -> TreeNode? {
        return root
    }
}
