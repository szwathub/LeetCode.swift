//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: LogicalORofTwoBinaryGridsRepresentedasQuadTrees.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//      https://github.com/szwathub/LeetCode.swift/issues/327
//  History:
//      2022/7/15: Created by szwathub on 2022/7/15
//

import Structure

class LogicalORofTwoBinaryGridsRepresentedasQuadTrees {

    typealias Node = QuadTree.Node

    func intersect(_ quadTree1: Node?, _ quadTree2: Node?) -> Node? {
        guard let quadTree1 = quadTree1, let quadTree2 = quadTree2 else {
            return nil
        }

        if quadTree1.isLeaf {
            if quadTree1.val {
                return Node(true, true)
            }

            return quadTree2
        }

        if quadTree2.isLeaf {
            return intersect(quadTree2, quadTree1)
        }

        let topLeft = intersect(quadTree1.topLeft, quadTree2.topLeft)
        let topRight = intersect(quadTree1.topRight, quadTree2.topRight)
        let bottomLeft = intersect(quadTree1.bottomLeft, quadTree2.bottomLeft)
        let bottomRight = intersect(quadTree1.bottomRight, quadTree2.bottomRight)

        if let topLeft = topLeft, topLeft.isLeaf,
           let topRight = topRight, topRight.isLeaf,
           let bottomLeft = bottomLeft, bottomLeft.isLeaf,
           let bottomRight = bottomRight, bottomRight.isLeaf,
           topLeft.val == topRight.val,
           topRight.val == bottomLeft.val,
           bottomLeft.val == bottomRight.val {

            return Node(topLeft.val, true)
        }

        let root = Node(false, false)
        root.topLeft = topLeft
        root.topRight = topRight
        root.bottomLeft = bottomLeft
        root.bottomRight = bottomRight

        return root
    }
}
