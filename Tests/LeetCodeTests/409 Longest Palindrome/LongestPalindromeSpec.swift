import XCTest
@testable import LeetCode

final class LongestPalindromeSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("abccccdd"), 7),
        (("a"), 1),
        (("bb"), 2)
    ]

    func testLongestPalindrome() {
        let solution = LongestPalindrome()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.longestPalindrome(s), answer)
        }
    }
}
