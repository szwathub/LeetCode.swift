import XCTest
@testable import LeetCode

final class RottingOrangesSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[2, 1, 1], [1, 1, 0], [0, 1, 1]]), 4),
        (([[2, 1, 1], [0, 1, 1], [1, 0, 1]]), -1),
        (([[0, 2]]), 0)
    ]

    func testRottingOranges() {
        let solution = RottingOranges()
        for ((grid), answer) in questions {
            XCTAssertEqual(solution.orangesRotting(grid), answer)
        }
    }
}
