//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindLargestValueinEachTreeRow.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/330
//  History:
//      2022/7/17: Created by szwathub on 2022/7/17
//

import Structure

class FindLargestValueinEachTreeRow {
    func largestValues(_ root: TreeNode?) -> [Int] {
        guard let root = root else {
            return []
        }

        var ans = [Int]()
        root.levelOrderTraversal { index, value in
            if index < ans.count {
                ans[index] = max(ans[index], value)
            } else {
                ans.append(value)
            }
        }

        return ans
    }
}
