import XCTest
@testable import LeetCode

final class CountNumberofMaximumBitwiseORSubsetsSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([3, 1]), 2),
        (([2, 2, 2]), 7),
        (([3, 2, 1, 5]), 6)
    ]

    func testCountNumberofMaximumBitwiseORSubsets() {
        let solution = CountNumberofMaximumBitwiseORSubsets()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.countMaxOrSubsets(nums), answer)
        }
    }
}
