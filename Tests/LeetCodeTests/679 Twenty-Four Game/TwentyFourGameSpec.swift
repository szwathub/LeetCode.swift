import XCTest
@testable import LeetCode

final class TwentyFourGameSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([4, 1, 8, 7]), true),
        (([1, 2, 1, 2]), false)
    ]

    func testTwentyFourGame() {
        let solution = TwentyFourGame()
        for ((cards), answer) in questions {
            XCTAssertEqual(solution.judgePoint24(cards), answer)
        }
    }
}
