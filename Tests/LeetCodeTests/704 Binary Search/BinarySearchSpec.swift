import XCTest
@testable import LeetCode

final class BinarySearchSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([-1, 0, 3, 5, 9, 12], 9), 4),
        (([-1, 0, 3, 5, 9, 12], 2), -1)
    ]

    func testBinarySearch() {
        let solution = BinarySearch()
        for ((nums, target), answer) in questions {
            XCTAssertEqual(solution.search(nums, target), answer)
        }
    }
}
