//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: BinarySearchTreeIterator.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/17: Created by szwathub on 2022/3/17
//

import Structure

class BSTIterator {

    private var index: Int = 0
    private var elements = [Int]()

    init(_ root: TreeNode?) {
        inorder(root: root)
    }

    func next() -> Int {
        let next = elements[index]
        index += 1
        return next
    }

    func hasNext() -> Bool {
        return index < elements.count
    }

    private func inorder(root: TreeNode?) {
        guard let root = root else {
            return
        }

        inorder(root: root.left)
        elements.append(root.val)
        inorder(root: root.right)
    }
}
