import XCTest
@testable import LeetCode
@testable import Structure

final class ReorderListSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 4]), [1, 4, 2, 3]),
        (([1, 2, 3, 4, 5]), [1, 5, 2, 4, 3]),
        (([]), [])
    ]

    func testReorderList() {
        let solution = ReorderList()
        for ((head), answer) in questions {
            let tree = SinglyLinkedList<Int>(head)
            solution.reorderList(tree.head)

            XCTAssertTrue(tree.head == SinglyLinkedList<Int>(answer).head)
        }
    }
}
