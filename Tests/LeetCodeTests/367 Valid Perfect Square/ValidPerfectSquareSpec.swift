import XCTest
@testable import LeetCode

final class ValidPerfectSquareSpec: XCTestCase {

    fileprivate let questions: [((Int), Bool)] = [
        ((16), true),
        ((14), false)
    ]

    func testValidPerfectSquare() {
        let solution = ValidPerfectSquare()
        for ((num), answer) in questions {
            XCTAssertEqual(solution.isPerfectSquare(num), answer)
        }
    }
}
