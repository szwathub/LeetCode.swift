import XCTest
@testable import LeetCode

final class SubsetsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [[Int]])] = [
        (([1, 2, 3]), [[], [1, 2, 3], [1, 2], [1, 3], [1], [2, 3], [2], [3]]),
        (([0]), [[], [0]])
    ]

    func testSubsets() {
        let solution = Subsets()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.subsets(nums), answer)
        }
    }
}
