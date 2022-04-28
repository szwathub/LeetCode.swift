import XCTest
@testable import LeetCode

final class SortArrayByParitySpec: XCTestCase {

    fileprivate let questions: [(([Int]), [Int])] = [
        (([3, 1, 2, 4]), [2, 4, 1, 3]),
        (([0]), [0])
    ]

    func testSortArrayByParity() {
        let solution = SortArrayByParity()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.sortArrayByParity(nums), answer)
        }
    }
}
