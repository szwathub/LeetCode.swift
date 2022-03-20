import XCTest
@testable import LeetCode

final class SearchInsertPositionSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1, 3, 5, 6], 5), 2),
        (([1, 3, 5, 6], 2), 1),
        (([1, 3, 5, 6], 7), 4),
        (([1, 3, 5, 6], 0), 0),
        (([1], 0), 0)
    ]

    func testSearchInsertPosition() {
        let solution = SearchInsertPosition()
        for ((nums, target), answer) in questions {
            XCTAssertEqual(solution.searchInsert(nums, target), answer)
        }
    }
}
