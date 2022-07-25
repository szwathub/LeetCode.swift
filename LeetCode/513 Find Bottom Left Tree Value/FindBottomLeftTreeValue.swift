//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: FindBottomLeftTreeValue.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/312
//  History:
//      2022/7/2: Created by szwathub on 2022/7/2
//

import Structure

class FindBottomLeftTreeValue {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        var current = -1
        var ans = 0
        root.levelOrderTraversal { index, node in
            if current != index {
                current = index
                ans = node.value
            }
        }

        return ans
    }
}
