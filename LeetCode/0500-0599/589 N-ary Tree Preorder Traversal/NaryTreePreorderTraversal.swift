//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: NaryTreePreorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://leetcode.cn/problems/n-ary-tree-preorder-traversal
//  History:
//      2024/2/18: Created by szwathub on 2024/2/18
//

class NaryTreePreorderTraversal {
    func preorderI(_ root: Node?) -> [Int] {
        guard let root = root else { return [] }

        var stack = [Node]()
        var answer = [Int]()
        stack.append(root)

        while !stack.isEmpty {
            let node = stack.removeFirst()
            answer.append(node.val)

            for child in node.children.reversed() {
                stack.insert(child, at: 0)
            }
        }

        return answer
    }

    func preorderII(_ root: Node?) -> [Int] {
        var answer = [Int]()
        helper(root, answer: &answer)

        return answer
    }

    private func helper(_ root: Node?, answer: inout [Int]) {
        guard let root = root else {
            return
        }

        answer.append(root.val)
        for child in root.children {
            helper(child, answer: &answer)
        }
    }
}
