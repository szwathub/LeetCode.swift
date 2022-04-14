import XCTest
@testable import LeetCode

final class RichestCustomerWealthSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[1, 2, 3], [3, 2, 1]]), 6),
        (([[1, 5], [7, 3], [3,5]]), 10)
    ]

    func testRichestCustomerWealthSpec() {
        let solution = RichestCustomerWealth()
        for ((accounts), answer) in questions {
            XCTAssertEqual(solution.maximumWealth(accounts), answer)
        }
    }
}
