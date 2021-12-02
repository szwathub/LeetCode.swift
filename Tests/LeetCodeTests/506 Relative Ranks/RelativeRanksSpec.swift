import XCTest
@testable import LeetCode

final class RelativeRanksSpec: XCTestCase {

    fileprivate let questions: [(([Int]), [String])] = [
        (([5, 4, 3, 2, 1]), ["Gold Medal", "Silver Medal", "Bronze Medal", "4", "5"]),
        (([10, 3, 8, 9, 4]), ["Gold Medal", "5", "Bronze Medal", "Silver Medal", "4"])
    ]

    func testRelativeRanks() {
        let solution = RelativeRanks()
        for ((score), answer) in questions {
            XCTAssertEqual(solution.findRelativeRanks(score), answer)
        }
    }
}
