import XCTest
@testable import LeetCode

final class ValidParenthesesSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var s: String
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(s: "()"), answer: true),
            .init(parameter: .init(s: "()[]{}"), answer: true),
            .init(parameter: .init(s: "(]"), answer: false),
            .init(parameter: .init(s: "([)]"), answer: false),
            .init(parameter: .init(s: "{[]}"), answer: true),
            .init(parameter: .init(s: "["), answer: false),
            .init(parameter: .init(s: "[]}"), answer: false)
        ]
    }

    func testValidParentheses() {
        let solution = ValidParentheses()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.isValid(parameter.s), answer)
        }
    }
}
