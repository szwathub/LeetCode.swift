import XCTest
@testable import LeetCode

final class ValidParenthesesSpec: XCTestCase {

    fileprivate let questions: [((String), Bool)] = [
        (("()"), true),
        (("()[]{}"), true),
        (("(]"), false),
        (("([)]"), false),
        (("{[]}"), true),
        (("["), false),
        (("[]}"), false)
    ]

    func testValidParentheses() {
        let solution = ValidParentheses()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.isValid(s), answer)
        }
    }
}
