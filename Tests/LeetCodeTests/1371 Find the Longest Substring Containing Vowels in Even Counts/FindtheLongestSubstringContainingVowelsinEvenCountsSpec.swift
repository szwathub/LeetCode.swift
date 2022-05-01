import XCTest
@testable import LeetCode

final class FindtheLongestSubstringContainingVowelsinEvenCountsSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("eleetminicoworoepu"), 13),
        (("leetcodeisgreat"), 5),
        (("bcbcbc"), 6)
    ]

    func testFindtheLongestSubstringContainingVowelsinEvenCounts() {
        let solution = FindtheLongestSubstringContainingVowelsinEvenCounts()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.findTheLongestSubstring(s), answer)
        }
    }
}
