import XCTest
@testable import LeetCode
@testable import Structure

final class RemoveDuplicatesfromSortedListIISpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 3, 4, 4, 5]), [1, 2, 5]),
        (([1, 1, 1, 2, 3]), [2, 3]),
        (([]), [])
    ]

    func testRemoveDuplicatesfromSortedListII() {
        let solution = RemoveDuplicatesfromSortedListII()
        for ((elements), answer) in questions {
            let result = solution.deleteDuplicates(SinglyLinkedList(elements).head)
            XCTAssertTrue(result == SinglyLinkedList(answer).head)
        }
    }
}
