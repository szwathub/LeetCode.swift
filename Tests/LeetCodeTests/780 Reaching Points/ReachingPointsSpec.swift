import XCTest
@testable import LeetCode

final class ReachingPointsSpec: XCTestCase {

    fileprivate let questions: [((Int, Int, Int, Int), Bool)] = [
        ((1, 1, 3, 5), true),
        ((1, 1, 2, 2), false),
        ((1, 1, 1, 1), true),
        ((6, 5, 11, 16), true)
    ]

    func testReachingPoints() {
        let solution = ReachingPoints()
        for ((sx, sy, tx, ty), answer) in questions {
            XCTAssertEqual(solution.reachingPoints(sx, sy, tx, ty), answer)
        }
    }
}
