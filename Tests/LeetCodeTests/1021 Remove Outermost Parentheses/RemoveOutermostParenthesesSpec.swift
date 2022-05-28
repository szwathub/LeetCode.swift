import XCTest
@testable import LeetCode

final class RemoveOutermostParenthesesSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("(()())(())"), "()()()"),
        (("(()())(())(()(()))"), "()()()()(())")
    ]

    func testRemoveOutermostParentheses() {
        let solution = RemoveOutermostParentheses()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.removeOuterParentheses(s), answer)
        }
    }
}
