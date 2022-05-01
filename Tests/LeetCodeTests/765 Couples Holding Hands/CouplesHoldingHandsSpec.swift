import XCTest
@testable import LeetCode

final class CouplesHoldingHandsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([0, 2, 1, 3]), 1),
        (([3, 2, 0, 1]), 0)
    ]

    func testCouplesHoldingHands() {
        let solution = CouplesHoldingHands()
        for ((row), answer) in questions {
            XCTAssertEqual(solution.minSwapsCouples(row), answer)
        }
    }
}
