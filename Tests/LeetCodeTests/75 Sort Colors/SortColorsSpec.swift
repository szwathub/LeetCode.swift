import XCTest
@testable import LeetCode

final class SortColorsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([2, 0, 2, 1, 1, 0]), [0, 0, 1, 1, 2, 2]),
        (([2, 0, 1]), [0, 1, 2])
    ]

    func testSortColors() {
        let solution = SortColors()
        for ((nums), answer) in questions {
            var sort = nums
            solution.sortColors(&sort)
            XCTAssertEqual(sort, answer)
        }
    }
}
