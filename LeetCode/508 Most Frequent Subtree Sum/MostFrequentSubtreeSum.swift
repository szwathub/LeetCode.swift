//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: MostFrequentSubtreeSum.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/6/19: Created by szwathub on 2022/6/19
//

import Structure

class MostFrequentSubtreeSum {
    func findFrequentTreeSum(_ root: TreeNode?) -> [Int] {
        var map = [Int: Int]()
        _ = dfs(root, &map)

        guard let max = map.values.max() else {
            return []
        }

        return Array(map.filter { $0.value == max }.keys)
    }

    private func dfs(_ root: TreeNode?, _ map: inout [Int: Int]) -> Int {
        guard let root = root else {
            return 0
        }

        let value = root.val + dfs(root.left, &map) + dfs(root.right, &map)
        map[value, default: 0] += 1

        return value
    }
}
