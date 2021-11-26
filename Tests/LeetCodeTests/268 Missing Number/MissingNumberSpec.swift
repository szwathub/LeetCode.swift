import XCTest
@testable import LeetCode

final class MissingNumberSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([3, 0, 1]), 2),
        (([0, 1]), 2),
        (([9, 6, 4, 2, 3, 5, 7, 0, 1]), 8),
        (([0]), 1)
    ]

    func testMissingNumber() {
        let solution = MissingNumber()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.missingNumber(nums), answer)
        }
    }
}
