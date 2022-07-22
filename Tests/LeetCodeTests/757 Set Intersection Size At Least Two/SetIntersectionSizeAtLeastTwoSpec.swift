import XCTest
@testable import LeetCode

final class SetIntersectionSizeAtLeastTwoSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[1, 3], [1, 4], [2, 5], [3, 5]]), 3),
        (([[1, 2], [2, 3], [2, 4], [4, 5]]), 5)
    ]

    func testSetIntersectionSizeAtLeastTwo() {
        let solution = SetIntersectionSizeAtLeastTwo()
        for ((intervals), answer) in questions {
            XCTAssertEqual(solution.intersectionSizeTwo(intervals), answer)
        }
    }
}
