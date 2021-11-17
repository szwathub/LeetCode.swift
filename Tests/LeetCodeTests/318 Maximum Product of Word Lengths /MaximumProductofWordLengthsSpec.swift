import XCTest
@testable import LeetCode

final class MaximumProductofWordLengthsSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var words: [String]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(words: ["abcw", "baz", "foo", "bar", "xtfn", "abcdef"]), answer: 16),
            .init(parameter: .init(words: ["a", "ab", "abc", "d", "cd", "bcd", "abcd"]), answer: 4),
            .init(parameter: .init(words: ["a", "aa", "aaa", "aaaa"]), answer: 0)
        ]
    }

    func testMaximumProductofWordLengths() {
        let solution = MaximumProductofWordLengths()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.maxProduct(parameter.words), answer)
        }
    }
}
