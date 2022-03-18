//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: PathSumII.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

import Structure

class PathSumII {

    func pathSum(_ root: TreeNode?, _ targetSum: Int) -> [[Int]] {
        var answer = [[Int]]()
        helper(root, targetSum, &answer, [])

        return answer
    }

    private func helper(_ root: TreeNode?, _ targetSum: Int, _ answer: inout [[Int]], _ path: [Int]) {
        guard let root = root else {
            return
        }

        var path = path
        path.append(root.val)
        if root.val == targetSum && root.left == nil && root.right == nil {
            answer.append(path)
        } else {
            helper(root.left, targetSum - root.val, &answer, path)
            helper(root.right, targetSum - root.val, &answer, path)
        }
    }
}
