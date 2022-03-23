import XCTest
@testable import LeetCode
@testable import Structure

final class MiddleoftheLinkedListSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 4, 5]), [3, 4, 5]),
        (([1, 2, 3, 4, 5, 6]), [4, 5, 6])
    ]

    func testMiddleoftheLinkedList() {
        let solution = MiddleoftheLinkedList()
        for ((elements), answer) in questions {
            let result = solution.middleNode(SinglyLinkedList(elements).head)
            XCTAssertEqual(result, SinglyLinkedList(answer).head)
        }
    }
}
