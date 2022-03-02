import XCTest
@testable import LeetCode

final class FindtheClosestPalindromeSpec: XCTestCase {

    fileprivate let questions: [((String), String)] = [
        (("123"), "121"),
        (("1"), "0")
    ]

    func testFindtheClosestPalindrome() {
        let solution = FindtheClosestPalindrome()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.nearestPalindromic(n), answer)
        }
    }
}
