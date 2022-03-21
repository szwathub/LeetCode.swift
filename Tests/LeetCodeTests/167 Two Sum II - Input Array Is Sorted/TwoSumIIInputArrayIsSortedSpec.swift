import XCTest
@testable import LeetCode

final class TwoSumIIInputArrayIsSortedSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([2, 7, 11, 15], 9), [1, 2]),
        (([2, 3, 4], 6), [1, 3]),
        (([-1, 0], -1), [1, 2]),
        (([-3, -2, -1, 0, 1, 2, 3], 5), [6, 7])
    ]

    func testTwoSumIIInputArrayIsSorted() {
        let solution = TwoSumIIInputArrayIsSorted()
        for ((numbers, target), answer) in questions {
            XCTAssertEqual(solution.twoSum(numbers, target), answer)
        }
    }
}
