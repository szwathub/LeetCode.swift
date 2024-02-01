//
//  Copyright © 2021 Zhiwei Sun. All rights reserved.
//
//  File name: Heap.swift
//  Author:    Zhiwei Sun @szwathub
//  E-mail:    szwathub@gmail.com
//
//  Description:
//
//  History:
//      2021/12/14: Created by szwathub on 2021/12/14
//

public struct Heap<Element> {

    /// The array that stores the heap's elements.
    private var elements = [Element]()

    /// Determines how to compare two elements in the heap.
    /// Use `>` for a max-heap or `<` for a min-heap,
    /// or provide a comparing method if the heap is made of custom elements, for example tuples.
    private let compare: (Element, Element) -> Bool

    /// A Boolean value indicating whether the heap is empty.
    public var isEmpty: Bool {
        elements.isEmpty
    }

    /// The number of elements in the heap.
    public var count: Int {
        elements.count
    }

    /// Creates a new, empty heap.
    ///
    /// The sort function determines whether this is a min-heap or max-heap.
    /// For comparable data types, `>` makes a max-heap, `<` makes a min-heap.
    ///
    /// - Parameter sort: The sort function determines whether this is a min-heap or max-heap.
    public init(sort: @escaping (Element, Element) -> Bool) {
        self.compare = sort
    }

    /// Creates an heap containing the elements of a sequence.
    ///
    /// - Parameters:
    ///   - sequence: The sequence of elements to turn into a heap.
    ///   - sort: The sort function determines whether this is a min-heap or max-heap.
    public init<S>(_ sequence: S, sort: @escaping (Element, Element) -> Bool) where Element == S.Element, S: Sequence {
        self.compare = sort
        for element in sequence {
            insert(element)
        }
    }

    /// Returns the maximum element in the heap (for a max-heap) or the minimum element (for a min-heap).
    public func peek() -> Element? {
        elements.first
    }

    /// Adds a new element to the heap. This reorders the heap so that the max-heap
    /// or min-heap property still holds.
    ///
    /// - Parameter element: The element to append to heap.
    /// - Complexity: O(*logn*)
    public mutating func insert(_ element: Element) {
        elements.append(element)
        shiftUp(elements.count - 1)
    }

    /// Adds a sequence of elements to the heap. This reorders the heap so that
    /// the max-heap or min-heap property still holds
    ///
    /// - Complexity: O(*logn*)
    public mutating func insert<S>(_ sequence: S) where Element == S.Element, S: Sequence {
        for element in sequence {
            insert(element)
        }
    }

    /// Changes the element at the index with the given element.
    ///
    /// - Parameters:
    ///   - element: The given element to replace.
    ///   - index: The index of element will be changed.
    public mutating func replace(_ element: Element, at index: Int) {
        guard index < elements.count else {
            return
        }

        remove(at: index)
        insert(element)
    }

    /// Removes and returns the root element from the heap. For a max-heap, this is the maximum
    /// element; for a min-heap it is the minimum element.
    ///
    /// - Returns: Returns the root element from the heap.
    /// - Complexity: O(*logn*)
    @discardableResult
    public mutating func remove() -> Element? {
        guard !elements.isEmpty else {
            return nil
        }

        if elements.count == 1 {
            return elements.removeLast()
        }

        let element = elements[0]
        elements[0] = elements.removeLast()
        shiftDown(0)

        return element
    }

    /// Removes and returns the element at the specified position.
    ///
    /// - Parameter index: The position of the element to remove.
    /// - Returns: The element at the specified index. return nil if `index` is
    ///    an invalid index of the heap.
    /// - Complexity: O(*n*), where *n* is the length of the heap.
    @discardableResult
    public mutating func remove(at index: Int) -> Element? {
        guard index < elements.count else {
            return nil
        }

        let maxIndex = elements.count - 1
        if index != maxIndex {
            elements.swapAt(index, maxIndex)
            shiftDown(from: index, until: maxIndex)
            shiftUp(index)
        }

        return elements.removeLast()
    }

    /// Returns the first index in which an element of the heap satisfies the given predicate.
    ///
    /// - Parameter predicate: A closure that takes an element as its argument
    ///   and returns a Boolean value that indicates whether the passed element
    ///   represents a match.
    /// - Returns: The index of the first element for which `predicate` returns
    ///   `true`. If no elements in the heap satisfy the given predicate, returns `nil`.
    /// - Complexity: O(*n*), where *n* is the size of the heap.
    public func firstIndex(where predicate: (Element) -> Bool) -> Int? {
        return elements.firstIndex(where: predicate)
    }

    /// Returns the first element of the heap satisfies the given predicate.
    /// - Parameter predicate: A closure that takes an element as its argument
    ///   and returns a Boolean value that indicates whether the passed element
    ///   represents a match.
    /// - Returns: The first element for which `predicate` returns `true`.
    ///   If no elements in the heap satisfy the given predicate, returns `nil`.
    /// - Complexity: O(*n*), where *n* is the size of the heap.
    @discardableResult
    public mutating func remove(where predicate: (Element) -> Bool) -> Element? {
        if let index = firstIndex(where: predicate) {
            return remove(at: index)
        }

        return nil
    }
}

extension Heap {

    /// Returns the index of the parent of the element at index.
    ///
    /// The element at index 0 is the root of the tree and has no parent.
    ///
    /// - Parameter index: The index of element
    /// - Returns: Returns the index of the parent of the element at index index.
    private func parentIndex(of index: Int) -> Int {
        return (index - 1) / 2
    }

    /// Returns the index of the left child of the element at index.
    ///
    /// Note that this index can be greater than the heap size, in which case there is no left child.
    ///
    /// - Parameter index: The index of element
    /// - Returns: Returns the index of the left child of the element at index.
    private func leftChildIndex(of index: Int) -> Int {
        return 2 * index + 1
    }

    /// Returns the index of the right child of the element at index.
    ///
    /// - Parameter index: The index of element
    /// - Returns: Returns the index of the right child of the element at index i.
    private func rightChildIndex(of index: Int) -> Int {
        return 2 * index + 2
    }

    /// Takes a child element and looks at its parents; if a parent is not larger
    /// (max-heap) or not smaller (min-heap) than the child, then exchange them.
    ///
    /// - Parameter index: The index of element.
    private mutating func shiftUp(_ index: Int) {
        var childIndex = index
        let child = elements[childIndex]
        var parentIndex = parentIndex(of: childIndex)

        while childIndex > 0 && compare(child, elements[parentIndex]) {
            elements[childIndex] = elements[parentIndex]
            childIndex = parentIndex
            parentIndex = self.parentIndex(of: childIndex)
        }

        elements[childIndex] = child
    }

    /// Looks at a parent element and makes sure it is still larger (max-heap) or
    /// smaller (min-heap) than its childeren.
    ///
    /// - Parameters:
    ///   - index: The index of element.
    ///   - endIndex: The end index.
    private mutating func shiftDown(from index: Int, until endIndex: Int) {
        let leftChildIndex = leftChildIndex(of: index)
        let rightChildIndex = rightChildIndex(of: index)

        var first = index
        if leftChildIndex < endIndex && compare(elements[leftChildIndex], elements[first]) {
            first = leftChildIndex
        }
        if rightChildIndex < endIndex && compare(elements[rightChildIndex], elements[first]) {
            first = rightChildIndex
        }
        if first == index {
            return
        }

        elements.swapAt(index, first)
        shiftDown(from: first, until: endIndex)
    }

    private mutating func shiftDown(_ index: Int) {
        shiftDown(from: index, until: elements.count)
    }
}
