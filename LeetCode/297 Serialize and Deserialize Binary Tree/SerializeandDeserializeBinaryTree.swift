//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: SerializeandDeserializeBinaryTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/3/19: Created by szwathub on 2022/3/19
//

import Structure

class SerializeandDeserializeBinaryTree {
    func serialize(_ root: TreeNode?) -> String {
        return decode(root, "")
    }

    private func decode(_ root: TreeNode?, _ serialize: String) -> String {
        guard let root = root else {
            return serialize + "nil,"
        }

        var serialize = serialize
        serialize += "\(root.val),"
        serialize = decode(root.left, serialize)
        serialize = decode(root.right, serialize)

        return serialize
    }

    func deserialize(_ data: String) -> TreeNode? {
        var list: [String] = data.split(separator: ",").map { String($0) }.reversed()

        return encode(&list)
    }

    private func encode(_ list: inout [String]) -> TreeNode? {
        guard let last = list.popLast(), last != "nil" else {
            return nil
        }

        let node = TreeNode(Int(last)!)
        node.left = encode(&list)
        node.right = encode(&list)

        return node
    }
}
