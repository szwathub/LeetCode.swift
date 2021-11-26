import XCTest
@testable import LeetCode

final class GuessNumberHigherorLowerIISpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((10), 16),
        ((1), 0),
        ((2), 1)
    ]

    func testGuessNumberHigherorLowerII() {
        let solution = GuessNumberHigherorLowerII()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.getMoneyAmount(n), answer)
        }
    }
}
