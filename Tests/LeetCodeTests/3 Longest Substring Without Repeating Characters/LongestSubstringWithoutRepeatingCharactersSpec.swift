import XCTest
@testable import LeetCode

final class LongestSubstringWithoutRepeatingCharactersSpec: XCTestCase {

    fileprivate let questions: [((String), Int)] = [
        (("abcabcbb"), 3),
        (("bbbbb"), 1),
        (("pwwkew"), 3)
    ]

    func testLongestSubstringWithoutRepeatingCharactersSpec() {
        let solution = LongestSubstringWithoutRepeatingCharacters()
        for ((s), answer) in questions {
            XCTAssertEqual(solution.lengthOfLongestSubstring(s), answer)
        }
    }
}
