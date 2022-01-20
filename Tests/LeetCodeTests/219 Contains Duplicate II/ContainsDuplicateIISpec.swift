import XCTest
@testable import LeetCode

final class ContainsDuplicateIISpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Bool)] = [
        (([1, 2, 3, 1], 3), true),
        (([1, 0, 1, 1], 1), true),
        (([1, 2, 3, 1, 2, 3], 2), false)
    ]

    func testContainsDuplicateII() {
        let solution = ContainsDuplicateII()
        for ((nums, k), answer) in questions {
            XCTAssertEqual(solution.containsNearbyDuplicate(nums, k), answer)
        }
    }
}
