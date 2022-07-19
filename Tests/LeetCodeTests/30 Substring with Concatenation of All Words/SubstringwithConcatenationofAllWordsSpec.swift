import XCTest
@testable import LeetCode

final class SubstringwithConcatenationofAllWordsSpec: XCTestCase {

    fileprivate let questions: [((String, [String]), [Int])] = [
        (("barfoothefoobarman", ["foo", "bar"]), [0, 9]),
        (("wordgoodgoodgoodbestword", ["word", "good", "best", "word"]), []),
        (("barfoofoobarthefoobarman", ["bar", "foo", "the"]), [6, 9, 12]),
        (("a", ["a", "a"]), [])
    ]

    func testSubstringwithConcatenationofAllWords() {
        let solution = SubstringwithConcatenationofAllWords()
        for ((s, words), answer) in questions {
            XCTAssertEqual(solution.findSubstring(s, words), answer)
        }
    }
}
