//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: DeleteNodeinaBST.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

import Structure

class DeleteNodeinaBST {
    func deleteNode(_ root: TreeNode?, _ key: Int) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        if key > root.val {
            root.right = deleteNode(root.right, key)
        } else if key < root.val {
            root.left = deleteNode(root.left, key)
        } else {
            if let right = root.right {
                root.val = successor(right)
                root.right = deleteNode(right, root.val)
            } else if let left = root.left {
                root.val = predecessor(left)
                root.left = deleteNode(left, root.val)
            } else {
                return nil
            }
        }

        return root
    }

    private func predecessor(_ node: TreeNode) -> Int {
        var current = node
        while let right = current.right {
            current = right
        }

        return current.val
    }

    private func successor(_ node: TreeNode) -> Int {
        var currnet = node
        while let left = currnet.left {
            currnet = left
        }

        return currnet.val
    }
}
