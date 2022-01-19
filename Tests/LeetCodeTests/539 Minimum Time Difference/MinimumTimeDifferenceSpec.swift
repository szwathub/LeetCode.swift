import XCTest
@testable import LeetCode

final class MinimumTimeDifferenceSpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["23:59", "00:00"]), 1),
        ((["00:00", "23:59", "00:00"]), 0)
    ]

    func testMinimumTimeDifference() {
        let solution = MinimumTimeDifference()
        for ((timePoints), answer) in questions {
            XCTAssertEqual(solution.findMinDifference(timePoints), answer)
        }
    }
}
