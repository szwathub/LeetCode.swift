import XCTest
@testable import LeetCode
@testable import Structure

final class SwapNodesinPairsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([1, 2, 3, 4]), [2, 1, 4, 3]),
        (([]), []),
        (([1]), [1])
    ]

    func testSwapNodesinPairs() {
        let solution = SwapNodesinPairs()
        for ((elements), answer) in questions {
            let node = solution.swapPairs(SinglyLinkedList(elements).head)
            XCTAssertTrue(node == SinglyLinkedList(answer).head)
        }
    }
}
