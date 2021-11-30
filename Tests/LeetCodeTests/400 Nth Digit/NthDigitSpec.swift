import XCTest
@testable import LeetCode

final class NthDigitSpec: XCTestCase {

    fileprivate let questions: [((Int), Int)] = [
        ((3), 3),
        ((11), 0),
        ((2147483647), 2)
    ]

    func testNthDigit() {
        let solution = NthDigit()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.findNthDigit(n), answer)
        }
    }
}
