import XCTest
@testable import LeetCode

final class SmallestRangeISpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1], 0), 0),
        (([0, 10], 2), 6),
        (([1, 3, 6], 3), 0)
    ]

    func testSmallestRangeI() {
        let solution = SmallestRangeI()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.smallestRangeI(nums, k), answer)
        }
    }
}
