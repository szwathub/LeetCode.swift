import XCTest
@testable import LeetCode

final class WordPatternSpec: XCTestCase {

    fileprivate let questions: [((String, String), Bool)] = [
        (("abba", "dog cat cat dog"), true),
        (("abba", "dog cat cat fish"), false),
        (("aaaa", "dog cat cat dog"), false),
        (("abba", "dog dog dog dog"), false),
        (("aaa", "aa aa aa aa"), false)
    ]

    func testWordPattern() {
        let solution = WordPattern()
        for ((pattern, s), answer) in questions {
            XCTAssertEqual(solution.wordPattern(pattern, s), answer)
        }
    }
}
