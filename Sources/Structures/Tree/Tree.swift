//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: Tree.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/11/21: Created by szwathub on 2021/11/21
//

import Foundation

final public class Tree<T> {
    public class Node {
        public var value: T?

        public weak var parent: Node?

        public var children = [Node]()

        public init(value: T? = nil) {
            self.value = value
        }
    }
}

extension Tree.Node {

}
