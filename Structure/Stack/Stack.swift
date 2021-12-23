//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: Stack.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/24: Created by szwathub on 2021/12/24
//

public struct Stack<Element> {

    /// The array that stores the stack's elements.
    private(set) var elements = [Element]()

    /// A Boolean value indicating whether the stack is empty.
    public var isEmpty: Bool {
        elements.isEmpty
    }

    /// The number of elements in the stack.
    public var count: Int {
        elements.count
    }

    /// Returns the value at the top of the stack.
    public func peek() -> Element? {
        elements.last
    }

    /// Adds a new element to the top of the stack.
    ///
    /// - Parameter element: The element to append to stack.
    ///
    /// - Complexity: O(1) on average, over many calls to `append(_:)` on the same stack.
    public mutating func push(_ element: Element) {
        elements.append(element)
    }

    /// Removes and returns the element in the top of the stack.
    ///
    /// - Parameter element: Returns the element in the top of the stack if the stack is not
    ///   empty; otherwise, `nil`.
    ///
    /// - Complexity: O(1)
    @discardableResult
    public mutating func pop() -> Element? {
        elements.popLast()
    }
}
