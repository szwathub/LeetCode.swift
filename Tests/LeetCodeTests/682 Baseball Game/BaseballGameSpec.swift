import XCTest
@testable import LeetCode

final class BaseballGameSpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["5", "2", "C", "D", "+"]), 30),
        ((["5", "-2", "4", "C", "D", "9", "+", "+"]), 27),
        ((["1"]), 1)
    ]

    func testBaseballGame() {
        let solution = BaseballGame()
        for ((ops), answer) in questions {
            XCTAssertEqual(solution.calPoints(ops), answer)
        }
    }
}
