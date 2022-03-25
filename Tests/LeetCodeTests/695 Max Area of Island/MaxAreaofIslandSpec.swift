import XCTest
@testable import LeetCode

final class MaxAreaofIslandSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[0, 0, 1, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
           [0, 1, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0],
           [0, 1, 0, 0, 1, 1, 0, 0, 1, 0, 1, 0, 0],
           [0, 1, 0, 0, 1, 1, 0, 0, 1, 1, 1, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 1, 1, 1, 0, 0, 0],
           [0, 0, 0, 0, 0, 0, 0, 1, 1, 0, 0, 0, 0]]), 6),
        (([[0, 0, 0, 0, 0, 0, 0, 0]]), 0)
    ]

    func testMaxAreaofIsland() {
        let solution = MaxAreaofIsland()
        for ((grid), answer) in questions {
            XCTAssertEqual(solution.maxAreaOfIsland(grid), answer)
        }
    }
}
