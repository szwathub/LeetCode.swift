import XCTest
@testable import LeetCode

final class DifferentWaystoAddParenthesesSpec: XCTestCase {

    fileprivate let questions: [((String), [Int])] = [
        (("2-1-1"), [0, 2]),
        (("2+1-1"), [2, 2]),
        (("2*3-4*5"), [-34, -14, -10, -10, 10])
    ]

    func testDifferentWaystoAddParentheses() {
        let solution = DifferentWaystoAddParentheses()
        for ((expression), answer) in questions {
            XCTAssertEqual(solution.diffWaysToCompute(expression).sorted(), answer)
        }
    }
}
