//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SearchinaBinarySearchTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/1/7: Created by szwathub on 2022/1/7
//

import Structure

class SearchinaBinarySearchTree {
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
        guard let root = root else {
            return nil
        }

        if root.val == val {
            return root
        } else if val < root.val {
            return searchBST(root.left, val)
        }

        return searchBST(root.right, val)
    }
}
