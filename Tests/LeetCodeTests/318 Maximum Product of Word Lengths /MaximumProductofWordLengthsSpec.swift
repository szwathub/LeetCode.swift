import XCTest
@testable import LeetCode

final class MaximumProductofWordLengthsSpec: XCTestCase {

    fileprivate let questions: [(([String]), Int)] = [
        ((["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]), 16),
        ((["a", "ab", "abc", "d", "cd", "bcd", "abcd"]), 4),
        ((["a", "aa", "aaa", "aaaa"]), 0)
    ]

    func testMaximumProductofWordLengths() {
        let solution = MaximumProductofWordLengths()
        for ((words), answer) in questions {
            XCTAssertEqual(solution.maxProduct(words), answer)
        }
    }
}
