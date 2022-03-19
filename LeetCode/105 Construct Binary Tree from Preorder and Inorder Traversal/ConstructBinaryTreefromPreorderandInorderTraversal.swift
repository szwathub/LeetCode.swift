//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ConstructBinaryTreefromPreorderandInorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class ConstructBinaryTreefromPreorderandInorderTraversal {

    var map = [Int: Int]()
    var preorder = [Int]()
    var inorder = [Int]()

    typealias Scope = (left: Int, right: Int)

    func buildTree(_ preorder: [Int], _ inorder: [Int]) -> TreeNode? {
        map.removeAll()
        self.preorder = preorder
        self.inorder = inorder

        for (index, value) in inorder.enumerated() {
            map[value] = index
        }

        return helper(Scope(0, preorder.count - 1), Scope(0, preorder.count - 1))
    }

    private func helper(_ preorder: Scope, _ inorder: Scope) -> TreeNode? {
        guard preorder.left <= preorder.right else {
            return nil
        }

        let preorderRoot = preorder.left
        let inorderRoot = map[self.preorder[preorderRoot]]!
        let root = TreeNode(self.preorder[preorderRoot])

        let size = inorderRoot - inorder.left
        root.left = helper(Scope(preorder.left + 1, preorder.left + size),
                           Scope(inorder.left, inorderRoot - 1))
        root.right = helper(Scope(preorder.left + size + 1, preorder.right),
                            Scope(inorderRoot + 1, inorder.right))

        return root
    }
}
