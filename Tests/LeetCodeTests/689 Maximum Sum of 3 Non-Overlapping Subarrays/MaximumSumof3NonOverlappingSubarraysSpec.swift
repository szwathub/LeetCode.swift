import XCTest
@testable import LeetCode

final class MaximumSumof3NonOverlappingSubarraysSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([1, 2, 1, 2, 6, 7, 5, 1], 2), [0, 3, 5]),
        (([1, 2, 1, 2, 1, 2, 1, 2, 1], 2), [0, 2, 4])
    ]

    func testMaximumSumof3NonOverlappingSubarrays() {
        let solution = MaximumSumof3NonOverlappingSubarrays()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.maxSumOfThreeSubarrays(nums, k), answer)
        }
    }
}
