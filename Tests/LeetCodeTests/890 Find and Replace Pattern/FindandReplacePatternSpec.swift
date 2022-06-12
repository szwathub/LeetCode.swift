import XCTest
@testable import LeetCode

final class FindandReplacePatternSpec: XCTestCase {

    fileprivate let questions: [(([String], String), [String])] = [
        ((["abc", "deq", "mee", "aqq", "dkd", "ccc"], "abb"), ["mee", "aqq"]),
        ((["a", "b", "c"], "a"), ["a", "b", "c"])
    ]

    func testFindandReplacePattern() {
        let solution = FindandReplacePattern()
        for ((words, pattern), answer) in questions {
            XCTAssertEqual(solution.findAndReplacePattern(words, pattern), answer)
        }
    }
}
