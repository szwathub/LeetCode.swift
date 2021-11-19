import XCTest
@testable import LeetCode

final class IntegerReplacementSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var n: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(n: 8), answer: 3),
            .init(parameter: .init(n: 7), answer: 4),
            .init(parameter: .init(n: 4), answer: 2)
        ]
    }

    func testIntegerReplacement() {
        let solution = IntegerReplacement()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.integerReplacement(parameter.n), answer)
        }
    }
}
