import XCTest
@testable import LeetCode

final class LongestHarmoniousSubsequenceSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 3, 2, 2, 5, 2, 3, 7]), 5),
        (([1, 2, 3, 4]), 2),
        (([1, 1, 1, 1]), 0),
        (([-3, -1, -1, -1, -3, -2]), 4)
    ]

    func testLongestHarmoniousSubsequence() {
        let solution = LongestHarmoniousSubsequence()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.findLHS(nums), answer)
        }
    }
}
