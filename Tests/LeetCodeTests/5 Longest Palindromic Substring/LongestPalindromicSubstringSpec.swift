import XCTest
@testable import LeetCode

final class LongestPalindromicSubstringSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("babad"), "aba"),
        (("cbbd"), "bb")
    ]

    func testLongestPalindromicSubstring() {
        let solution = LongestPalindromicSubstring()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.longestPalindrome(s), answer)
        }
    }
}
