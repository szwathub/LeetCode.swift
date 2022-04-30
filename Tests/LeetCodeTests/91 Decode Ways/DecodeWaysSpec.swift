import XCTest
@testable import LeetCode

final class DecodeWaysSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("12"), 2),
        (("226"), 3),
        (("0"), 0),
        (("10"), 1),
        (("2101"), 1)
    ]

    func testDecodeWays() {
        let solution = DecodeWays()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.numDecodings(s), answer)
        }
    }
}
