import XCTest
@testable import LeetCode

final class MinCostClimbingStairsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([]), 0),
        (([10, 15]), 10),
        (([10, 15, 20]), 15),
        (([1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), 6)
    ]

    func testMinCostClimbingStairs() {
        let solution = MinCostClimbingStairs()
        for ((cost), answer) in questions {
            XCTAssertEqual(solution.minCostClimbingStairs(cost), answer)
        }
    }
}
