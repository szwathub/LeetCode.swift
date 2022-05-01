import XCTest
@testable import LeetCode

final class RepeatedSubstringPatternSpec: XCTestCase {

    fileprivate let questions: [((String), Bool)] = [
        (("abab"), true),
        (("aba"), false),
        (("abcabcabcabc"), true)
    ]

    func testRepeatedSubstringPattern() {
        let solution = RepeatedSubstringPattern()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.repeatedSubstringPattern(s), answer)
        }
    }
}
