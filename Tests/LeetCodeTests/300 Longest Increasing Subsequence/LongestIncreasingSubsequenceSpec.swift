import XCTest
@testable import LeetCode

final class LongestIncreasingSubsequenceSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([10, 9, 2, 5, 3, 7, 101, 18]), 4),
        (([0, 1, 0, 3, 2, 3]), 4),
        (([7, 7, 7, 7, 7, 7, 7]), 1),
        (([]), 0),
        (([1]), 1),
        (([3, 5, 6, 2, 5, 4, 19, 5, 6, 7, 12]), 6)
    ]

    func testLongestIncreasingSubsequence() {
        let solution = LongestIncreasingSubsequence()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.lengthOfLIS(nums), answer)
            XCTAssertEqual(solution.lengthOfLISII(nums), answer)
        }
    }
}
