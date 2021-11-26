import XCTest
@testable import LeetCode

final class LongestArithmeticSubsequenceofGivenDifferenceSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), Int)] = [
        (([1, 2, 3, 4], 1), 4),
        (([1, 3, 5, 7], 1), 1),
        (([1, 5, 7, 8, 5, 3, 4, 2, 1], -2), 4)
    ]

    func testLongestArithmeticSubsequenceofGivenDifference() {
        let solution = LongestArithmeticSubsequenceofGivenDifference()
        for ((arr, difference), answer) in questions {
            XCTAssertEqual(solution.longestSubsequence(arr, difference), answer)
        }
    }
}
