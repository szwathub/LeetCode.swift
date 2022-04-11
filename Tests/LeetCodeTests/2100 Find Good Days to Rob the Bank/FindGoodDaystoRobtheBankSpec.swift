import XCTest
@testable import LeetCode

final class FindGoodDaystoRobtheBankSpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [Int])] = [
        (([5, 3, 3, 3, 5, 6, 2], 2), [2, 3]),
        (([1, 1, 1, 1, 1], 0), [0, 1, 2, 3, 4]),
        (([1, 2, 3, 4, 5, 6], 2), []),
        (([1], 5), []),
        (([0, 0, 0, 0, 0], 3), [])
    ]

    func testFindGoodDaystoRobtheBank() {
        let solution = FindGoodDaystoRobtheBank()
        for ((security, time), answer) in questions {
            XCTAssertEqual(solution.goodDaysToRobBank(security, time), answer)
        }
    }
}
