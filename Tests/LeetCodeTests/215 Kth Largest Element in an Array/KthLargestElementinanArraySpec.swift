import XCTest
@testable import LeetCode

final class KthLargestElementinanArraySpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([3, 2, 1, 5, 6, 4], 2), 5),
        (([3, 2, 3, 1, 2, 4, 5, 5, 6], 4), 4)
    ]

    func testKthLargestElementinanArray() {
        let solution = KthLargestElementinanArray()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.findKthLargest(nums, k), answer)
        }
    }
}
