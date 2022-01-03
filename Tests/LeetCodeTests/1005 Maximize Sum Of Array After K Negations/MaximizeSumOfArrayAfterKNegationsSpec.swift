import XCTest
@testable import LeetCode

final class MaximizeSumOfArrayAfterKNegationsSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([4, 2, 3], 1), 5),
        (([3, -1, 0, 2], 3), 6),
        (([2, -3, -1, 5, -4], 2), 13)
    ]

    func testTwoSum() {
        let solution = MaximizeSumOfArrayAfterKNegations()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.largestSumAfterKNegations(nums, k), answer)
        }
    }
}
