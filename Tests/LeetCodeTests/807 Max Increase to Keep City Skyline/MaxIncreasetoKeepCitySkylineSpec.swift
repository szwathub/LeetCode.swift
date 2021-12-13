import XCTest
@testable import LeetCode

final class MaxIncreasetoKeepCitySkylineSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[3, 0, 8, 4], [2, 4, 5, 7], [9, 2, 6, 3], [0, 3, 1, 0]]), 35),
        (([[0, 0, 0], [0, 0, 0], [0, 0, 0]]), 0)
    ]

    func testMaxIncreasetoKeepCitySkyline() {
        let solution = MaxIncreasetoKeepCitySkyline()
        for ((grid), answer) in questions {
            XCTAssertEqual(solution.maxIncreaseKeepingSkyline(grid), answer)
        }
    }
}
