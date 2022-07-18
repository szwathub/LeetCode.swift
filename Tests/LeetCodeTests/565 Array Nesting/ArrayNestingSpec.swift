import XCTest
@testable import LeetCode

final class ArrayNestingSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([5, 4, 0, 3, 1, 6, 2]), 4),
        (([0, 1, 2]), 1)
    ]

    func testArrayNesting() {
        let solution = ArrayNesting()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.arrayNesting(nums), answer)
        }
    }
}
