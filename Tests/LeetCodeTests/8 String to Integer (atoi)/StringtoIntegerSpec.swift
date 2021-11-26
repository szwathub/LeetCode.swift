import XCTest
@testable import LeetCode

final class StringtoIntegerSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("42"), 42),
        (("   -42"), -42),
        (("4193 with words"), 4193),
        (("words and 987"), 0),
        (("-91283472332"), -2147483648),
        (("91283472332"), 2147483647)
    ]

    func testStringtoInteger() {
        let solution = StringtoInteger()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.myAtoi(s), answer)
        }
    }
}
