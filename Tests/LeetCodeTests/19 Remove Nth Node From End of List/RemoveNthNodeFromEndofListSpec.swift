import XCTest
@testable import LeetCode
@testable import Structure

final class RemoveNthNodeFromEndofListSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 2, 3, 4, 5], 2), [1, 2, 3, 5]),
        (([1], 1), []),
        (([1, 2], 1), [1])
    ]

    func testRemoveNthNodeFromEndofList() {
        let solution = RemoveNthNodeFromEndofList()
        for ((elements, n), answer) in questions {
            let result = solution.removeNthFromEnd(SinglyLinkedList(elements).head, n)
            XCTAssertEqual(result, SinglyLinkedList(answer).head)
        }
    }
}
