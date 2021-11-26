import XCTest
@testable import LeetCode

final class MaximumSubarraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([-2, 1, -3, 4, -1, 2, 1, -5, 4]), 6),
        (([1]), 1),
        (([5, 4, -1, 7, 8]), 23),
        (([-1]), -1),
        (([]), 0)
    ]

    func testMaximumSubarray() {
        let solution = MaximumSubarray()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.maxSubArray(nums), answer)
            XCTAssertEqual(solution.maxSubArrayII(nums), answer)
        }
    }
}
