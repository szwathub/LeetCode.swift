import XCTest
@testable import LeetCode

final class FirstBadVersionSpec: XCTestCase {

    fileprivate let questions: [((Int, Int), Int)] = [
        ((5, 4), 4),
        ((2, 2), 2),
        ((10, 2), 2)
    ]

    func testFirstBadVersion() {
        for ((n, bad), answer) in questions {
            let solution = FirstBadVersion(bad)
            XCTAssertEqual(solution.firstBadVersion(n), answer)
        }
    }
}
