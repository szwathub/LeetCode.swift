import XCTest
@testable import LeetCode
@testable import Structure

final class RemoveDuplicatesfromSortedListSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 1, 2]), [1, 2]),
        (([1, 1, 2, 3, 3]), [1, 2, 3]),
        (([]), [])
    ]

    func testRemoveDuplicatesfromSortedList() {
        let solution = RemoveDuplicatesfromSortedList()
        for ((head), answer) in questions {
            let node = solution.deleteDuplicates(SinglyLinkedList(head).head)

            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }
}
