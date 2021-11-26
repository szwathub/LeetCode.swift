import XCTest
@testable import LeetCode

final class DistributeCandiesSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 1, 2, 2, 3, 3]), 3),
        (([1, 1, 2, 3]), 2),
        (([6, 6, 6, 6]), 1)
    ]

    func testDistributeCandies() {
        let solution = DistributeCandies()
        for ((candyType), answer) in questions {
            XCTAssertEqual(solution.distributeCandies(candyType), answer)
        }
    }
}
