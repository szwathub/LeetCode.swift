//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: KthSmallestElementinaBST.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/18: Created by szwathub on 2022/3/18
//

import Structure

class KthSmallestElementinaBST {

    func kthSmallest(_ root: TreeNode?, _ k: Int) -> Int {
        var stack = [TreeNode]()
        var node = root
        var k = k
        var answer = 0

        while !stack.isEmpty || node != nil {
            while let current = node {

                stack.append(current)
                node = current.left
            }

            let top = stack.removeLast()
            k -= 1
            if k == 0 {
                answer = top.val
                break
            }

            node = top.right
        }

        return answer
    }
}
