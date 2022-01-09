import XCTest
@testable import LeetCode

final class MergeIntervalsSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [[Int]])] = [
        (([[1, 3], [2, 6], [8, 10], [15, 18]]), [[1, 6], [8, 10], [15, 18]]),
        (([[1, 4], [4, 5]]), [[1, 5]]),
        (([[1, 4], [0, 4]]), [[0, 4]]),
        (([[1, 4], [2, 3]]), [[1, 4]])
    ]

    func testMergeIntervals() {
        let solution = MergeIntervals()
        for ((intervals), answer) in questions {
            XCTAssertEqual(solution.merge(intervals), answer)
        }
    }
}
