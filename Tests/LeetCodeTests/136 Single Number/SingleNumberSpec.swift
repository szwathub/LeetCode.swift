import XCTest
@testable import LeetCode

final class SingleNumberSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([2, 2, 1]), 1),
        (([4, 1, 2, 1, 2]), 4),
        (([1]), 1)
    ]

    func testSingleNumber() {
        let solution = SingleNumber()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.singleNumber(nums), answer)
        }
    }
}
