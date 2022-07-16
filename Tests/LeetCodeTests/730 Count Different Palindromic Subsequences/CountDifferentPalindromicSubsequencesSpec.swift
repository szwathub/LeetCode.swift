import XCTest
@testable import LeetCode

final class CountDifferentPalindromicSubsequencesSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("bccb"), 6),
        (("abcdabcdabcdabcdabcdabcdabcdabcddcbadcbadcbadcbadcbadcbadcbadcba"), 104860361)
    ]

    func testCountDifferentPalindromicSubsequences() {
        let solution = CountDifferentPalindromicSubsequences()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.countPalindromicSubsequences(s), answer)
        }
    }
}
