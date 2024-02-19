//
//  Copyright © 2024 Zhiwei Sun. All rights reserved.
//
//  File name: NaryTreePostorderTraversal.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2024/2/19: Created by szwathub on 2024/2/19
//

class NaryTreePostorderTraversal {

    func postorderII(_ root: Node?) -> [Int] {
        var answer = [Int]()
        helper(root, answer: &answer)

        return answer
    }

    private func helper(_ root: Node?, answer: inout [Int]) {
        guard let root = root else {
            return
        }

        for child in root.children {
            helper(child, answer: &answer)
        }

        answer.append(root.val)
    }
}
