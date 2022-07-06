import XCTest
@testable import LeetCode

final class MatchstickstoSquareSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([1, 1, 2, 2, 2]), true),
        (([3, 3, 3, 3, 4]), false),
        (([3, 3, 2, 3, 4]), false)
    ]

    func testMatchstickstoSquare() {
        let solution = MatchstickstoSquare()
        for ((matchsticks), answer) in questions {
            XCTAssertEqual(solution.makesquare(matchsticks), answer)
        }
    }
}
