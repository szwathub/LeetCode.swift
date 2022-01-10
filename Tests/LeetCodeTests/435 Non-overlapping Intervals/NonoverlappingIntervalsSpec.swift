import XCTest
@testable import LeetCode

final class NonoverlappingIntervalsSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[1, 2], [2, 3], [3, 4], [1, 3]]), 1),
        (([[1, 2], [1, 2], [1, 2]]), 2),
        (([[1, 2], [2, 3]]), 0)
    ]

    func testNonoverlappingIntervals() {
        let solution = NonoverlappingIntervals()
        for ((intervals), answer) in questions {
            XCTAssertEqual(solution.eraseOverlapIntervals(intervals), answer)
        }
    }
}
