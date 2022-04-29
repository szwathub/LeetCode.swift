//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: ConstructQuadTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/4/29: Created by szwathub on 2022/4/29
//

class ConstructQuadTree {
    public class Node {
        public var val: Bool

        public var isLeaf: Bool

        public var topLeft: Node?

        public var topRight: Node?

        public var bottomLeft: Node?

        public var bottomRight: Node?

        public init(_ val: Bool, _ isLeaf: Bool) {
              self.val = val
              self.isLeaf = isLeaf
              self.topLeft = nil
              self.topRight = nil
              self.bottomLeft = nil
              self.bottomRight = nil
        }
    }

    var grid = [[Int]]()

    func construct(_ grid: [[Int]]) -> Node? {
        self.grid = grid
        return helper(0, 0, grid.count - 1, grid.count - 1)
    }

    private func helper(_ r0: Int, _ c0: Int, _ r1: Int, _ c1: Int) -> Node {
        let value = grid[r0][c0]
        var same = true

        loop: for i in r0...r1 {
            for j in c0...c1 {
                if grid[i][j] != value {
                    same = false
                    break loop
                }
            }
        }

        if same {
            return Node(value == 1, true)
        }

        let root = Node(value == 1, false)
        let dx = r1 - r0 + 1, dy = c1 - c0 + 1
        root.topLeft     = helper(r0, c0, r0 + dx / 2 - 1, c0 + dy / 2 - 1)
        root.topRight    = helper(r0, c0 + dy / 2, r0 + dx / 2 - 1, c1)
        root.bottomLeft  = helper(r0 + dx / 2, c0, r1, c0 + dy / 2 - 1)
        root.bottomRight = helper(r0 + dx / 2, c0 + dy / 2, r1, c1)

        return root
    }
}
