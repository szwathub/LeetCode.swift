import XCTest
@testable import LeetCode

final class SubarraySumEqualsKSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1, 1, 1], 2), 2),
        (([1, 2, 3], 3), 2)
    ]

    func testSubarraySumEqualsK() {
        let solution = SubarraySumEqualsK()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.subarraySum(nums, k), answer)
        }
    }
}
