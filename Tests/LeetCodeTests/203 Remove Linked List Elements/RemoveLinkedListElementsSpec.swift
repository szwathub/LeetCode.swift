import XCTest
@testable import LeetCode
@testable import Structure

final class RemoveLinkedListElementsSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 2, 6, 3, 4, 5, 6], 6), [1, 2, 3, 4, 5]),
        (([], 1), []),
        (([7, 7, 7, 7], 7), [])
    ]

    func testRemoveLinkedListElements() {
        let solution = RemoveLinkedListElements()
        for ((head, val), answer) in questions {
            let node = solution.removeElements(SinglyLinkedList(head).head, val)

            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }
}
