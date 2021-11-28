import XCTest
@testable import LeetCode

final class MinimumPathSumSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[1, 3, 1], [1, 5, 1], [4, 2, 1]]), 7),
        (([[1, 2, 3], [4, 5, 6]]), 12)
    ]

    func testMinimumPathSum() {
        let solution = MinimumPathSum()
        for ((grid), answer) in questions {
            XCTAssertEqual(solution.minPathSum(grid), answer)
        }
    }
}
