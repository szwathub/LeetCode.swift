import XCTest
@testable import LeetCode

final class MajorityElementSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([3, 2, 3]), 3),
        (([2, 2, 1, 1, 1, 2, 2]), 2)
    ]

    func testMajorityElement() {
        let solution = MajorityElement()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.majorityElement(nums), answer)
        }
    }
}
