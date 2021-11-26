import XCTest
@testable import LeetCode

final class TwoSumSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([3, 2, 4], 6), [1, 2]),
        (([3, 2, 4], 5), [0, 1]),
        (([0, 8, 7, 3, 3, 4, 2], 11), [1, 3]),
        (([0, 1], 1), [0, 1]),
        (([0, 1], 2), [])
    ]

    func testTwoSum() {
        let solution = TwoSum()
        for ((nums, target), answer) in questions {
            XCTAssertEqual(solution.twoSum(nums, target), answer)
        }
    }
}
