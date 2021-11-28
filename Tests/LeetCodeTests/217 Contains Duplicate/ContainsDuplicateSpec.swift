import XCTest
@testable import LeetCode

final class ContainsDuplicateSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Bool)] = [
        (([1, 2, 3, 1]), true),
        (([1, 2, 3, 4]), false),
        (([1, 1, 1, 3, 3, 4, 3, 2, 4, 2]), true)
    ]

    func testContainsDuplicate() throws {
        let solution = ContainsDuplicate()
        for ((nums), answer) in questions {
            XCTAssertEqual(solution.containsDuplicate(nums), answer)
        }
    }
}
