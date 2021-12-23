//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: PriorityQueue.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/15: Created by szwathub on 2021/12/15
//

public struct PriorityQueue<Element> {

    private var heap: Heap<Element>

    /// A Boolean value indicating whether the priority queue is empty.
    public var isEmpty: Bool {
        heap.isEmpty
    }

    /// The number of elements in the priority queue.
    public var count: Int {
        heap.count
    }

    /// Creates a new, empty priority queue.
    ///
    /// The sort function determines whether this is a max-priority or max-priority.
    /// For comparable data types, `>` makes a max-priority, `<` makes a min-priority.
    ///
    /// - Parameter sort: The sort function determines whether this is a max-priority or max-priority.
    public init(sort: @escaping (Element, Element) -> Bool) {
        heap = Heap(sort: sort)
    }

    /// Creates an priority queue containing the elements of a sequence.
    ///
    /// - Parameters:
    ///   - sequence: The sequence of elements to turn into a priority queue.
    ///   - sort: The sort function determines whether this is a max-priority or max-priority.
    public init<S>(_ sequence: S, sort: @escaping (Element, Element) -> Bool) where Element == S.Element, S: Sequence {
        heap = Heap(sequence, sort: sort)
    }

    /// Returns the value at the front of the priority queue.
    public func peek() -> Element? {
        heap.peek()
    }

    /// Adds a new element to the front of the priority queue.
    ///
    /// - Parameter element: The element to append to priority queue.
    public mutating func enqueue(_ element: Element) {
        heap.insert(element)
    }

    /// Removes and returns the element in the front of the priority queue.
    ///
    /// - Parameter element: Returns the element in the front of the priority queue.
    @discardableResult
    public mutating func dequeue() -> Element? {
        heap.remove()
    }
}
