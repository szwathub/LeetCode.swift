import XCTest
@testable import LeetCode

final class SumofSubarrayRangesSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 2, 3]), 4),
        (([1, 3, 3]), 4),
        (([4, -2, -3, 4, 1]), 59)
    ]

    func testSumofSubarrayRanges() {
        let solution = SumofSubarrayRanges()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.subArrayRanges(nums), answer)
        }
    }
}
