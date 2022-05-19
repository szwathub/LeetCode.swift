import XCTest
@testable import LeetCode

final class MinimumMovestoEqualArrayElementsIISpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 3]), 2),
        (([1, 10, 2, 9]), 16)
    ]

    func testMinimumMovestoEqualArrayElementsII() {
        let solution = MinimumMovestoEqualArrayElementsII()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.minMoves2(nums), answer)
        }
    }
}
