import XCTest
@testable import LeetCode

final class EliminationGameSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((9), 6),
        ((1), 1)
    ]

    func testEliminationGame() {
        let solution = EliminationGame()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.lastRemaining(n), answer)
        }
    }
}
