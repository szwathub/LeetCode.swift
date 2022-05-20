import XCTest
@testable import LeetCode

final class FindRightIntervalSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [Int])] = [
        (([[1, 2]]), [-1]),
        (([[3, 4], [2, 3], [1, 2]]), [-1, 0, 1]),
        (([[1, 4], [2, 3], [3, 4]]), [-1, 2, -1])
    ]

    func testFindRightInterval() {
        let solution = FindRightInterval()
        for ((intervals), answer) in questions {
            XCTAssertEqual(solution.findRightInterval(intervals), answer)
        }
    }
}
