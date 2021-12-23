import XCTest
@testable import LeetCode
@testable import Structure

final class ReverseLinkedListSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 4, 5]), [5, 4, 3, 2, 1]),
        (([1, 2]), [2, 1]),
        (([]), [])
    ]

    func testReverseLinkedList() {
        let solution = ReverseLinkedList()
        for ((head), answer) in questions {
            let node = solution.reverseList(SinglyLinkedList(head).head)

            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }

    func testReverseLinkedListI() {
        let solution = ReverseLinkedList()
        for ((head), answer) in questions {
            let node = solution.reverseListI(SinglyLinkedList(head).head)

            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }
}
