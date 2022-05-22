import XCTest
@testable import LeetCode

final class NRepeatedElementinSize2NArraySpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([3, 2, 1, 3]), 3),
        (([1, 2, 3, 3]), 3),
        (([2, 1, 2, 5, 3, 2]), 2),
        (([5, 1, 5, 2, 5, 3, 5, 4]), 5)
    ]

    func testNRepeatedElementinSize2NArray() {
        let solution = NRepeatedElementinSize2NArray()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.repeatedNTimes(nums), answer)
        }
    }
}
