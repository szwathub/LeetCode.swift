import XCTest
@testable import LeetCode
@testable import Structure

final class ReverseNodesinkGroupSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 2, 3, 4, 5], 2), [2, 1, 4, 3, 5]),
        (([1, 2, 3, 4, 5], 3), [3, 2, 1, 4, 5])
    ]

    func testReverseNodesinkGroup() {
        let solution = ReverseNodesinkGroup()
        for ((elements, k), answer) in questions {
            let result = solution.reverseKGroup(SinglyLinkedList(elements).head, k)
            XCTAssertTrue(result == SinglyLinkedList(answer).head)
        }
    }
}
