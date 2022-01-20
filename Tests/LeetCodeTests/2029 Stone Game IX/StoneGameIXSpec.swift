import XCTest
@testable import LeetCode

final class StoneGameIXSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([2, 1]), true),
        (([2]), false),
        (([5, 1, 2, 4, 3]), false)
    ]

    func testStoneGameIX() {
        let solution = StoneGameIX()
        for ((stones), answer) in questions {
            XCTAssertEqual(solution.stoneGameIX(stones), answer)
        }
    }
}
