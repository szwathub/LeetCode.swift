//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: BinaryTreeTilt.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/18: Created by szwathub on 2021/11/18
//

import Foundation

class BinaryTreeTilt {
    public var tilt: Int = 0

    func findTilt(_ root: TreeNode?) -> Int {
        dfs(root: root)

        return tilt
    }

    @discardableResult
    private func dfs(root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        let left = dfs(root: root.left)
        let right = dfs(root: root.right)
        tilt += abs(left - right)

        return left + right + root.val
    }
}
