import XCTest
@testable import LeetCode

final class StringtoIntegerSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var s: String
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(s: "42"), answer: 42),
            .init(parameter: .init(s: "   -42"), answer: -42),
            .init(parameter: .init(s: "4193 with words"), answer: 4193),
            .init(parameter: .init(s: "words and 987"), answer: 0),
            .init(parameter: .init(s: "-91283472332"), answer: -2147483648),
            .init(parameter: .init(s: "91283472332"), answer: 2147483647)
        ]
    }

    func testStringtoInteger() {
        let solution = StringtoInteger()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.myAtoi(parameter.s), answer)
        }
    }
}
