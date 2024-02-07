//
//  Copyright © 2022 Zhiwei Sun. All rights reserved.
//
//  File name: QuadTree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2022/7/15: Created by szwathub on 2022/7/15
//

public class QuadTree {

    public typealias Node = QuadTree

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

// MARK: - Equatable
extension QuadTree: Equatable {

    /// Returns a Boolean value indicating whether two quad tree node contain the same
    /// elements in the same order.
    ///
    /// You can use the equal-to operator (`==`) to compare any two quad tree node
    /// that store the same, `Equatable`-conforming element type.
    ///
    /// - Parameters:
    ///   - lhs: a quad tree node to compare.
    ///   - rhs: Another quad tree node to compare.
    public static func == (lhs: QuadTree, rhs: QuadTree) -> Bool {
        return (lhs.isLeaf == rhs.isLeaf
                && lhs.val == rhs.val
                && lhs.topLeft == rhs.topLeft
                && lhs.topRight == rhs.topRight
                && lhs.bottomLeft == rhs.bottomLeft
                && lhs.bottomRight == rhs.bottomRight)
    }
}
