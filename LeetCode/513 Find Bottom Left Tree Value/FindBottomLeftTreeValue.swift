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

class FindBottomLeftTreeValue {
    func findBottomLeftValue(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        var quene = [TreeNode]()
        var answer = [Int]()
        quene.append(root)

        while !quene.isEmpty {
            var level = [Int]()
            for _ in 0..<quene.count {
                let node = quene.removeFirst()
                level.append(node.val)

                if let left = node.left {
                    quene.append(left)
                }
                if let right = node.right {
                    quene.append(right)
                }
            }
            answer = level
        }

        return answer.first!
    }
}
