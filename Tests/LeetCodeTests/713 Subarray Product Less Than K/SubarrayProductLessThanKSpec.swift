import XCTest
@testable import LeetCode

final class SubarrayProductLessThanKSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([10, 5, 2, 6], 100), 8),
        (([1, 2, 3], 0), 0)
    ]

    func testSubarrayProductLessThanK() {
        let solution = SubarrayProductLessThanK()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.numSubarrayProductLessThanK(nums, k), answer)
        }
    }
}
