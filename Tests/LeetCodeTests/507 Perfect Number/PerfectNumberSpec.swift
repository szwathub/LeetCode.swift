import XCTest
@testable import LeetCode

final class PerfectNumberSpec: XCTestCase {

    fileprivate let questions: [((Int), Bool)] = [
        ((1), false),
        ((28), true),
        ((7), false)
    ]

    func testPerfectNumber() {
        let solution = PerfectNumber()
        for ((num), answer) in questions {
            XCTAssertEqual(solution.checkPerfectNumber(num), answer)
        }
    }
}
