import XCTest
@testable import LeetCode

final class MinimumCosttoMoveChipstoTheSamePositionSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 3]), 1),
        (([2, 2, 2, 3, 3]), 2),
        (([1, 1000000000]), 1)
    ]

    func testMinimumCosttoMoveChipstoTheSamePosition() {
        let solution = MinimumCosttoMoveChipstoTheSamePosition()
        for ((position), answer) in questions {
            XCTAssertEqual(solution.minCostToMoveChips(position), answer)
        }
    }
}
