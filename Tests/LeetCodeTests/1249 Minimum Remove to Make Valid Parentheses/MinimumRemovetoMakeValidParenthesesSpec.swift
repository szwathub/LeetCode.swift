import XCTest
@testable import LeetCode

final class MinimumRemovetoMakeValidParenthesesSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("lee(t(c)o)de)"), "lee(t(c)o)de"),
        (("a)b(c)d"), "ab(c)d"),
        (("))(("), "")
    ]

    func testMinimumRemovetoMakeValidParentheses() {
        let solution = MinimumRemovetoMakeValidParentheses()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.minRemoveToMakeValid(s), answer)
        }
    }
}
