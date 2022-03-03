import XCTest
@testable import LeetCode

final class AddDigitsSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((38), 2),
        ((0), 0)
    ]

    func testAddDigits() {
        let solution = AddDigits()
        for ((num), answer) in questions {
            XCTAssertEqual(solution.addDigitsI(num), answer)
            XCTAssertEqual(solution.addDigitsII(num), answer)
        }
    }
}
