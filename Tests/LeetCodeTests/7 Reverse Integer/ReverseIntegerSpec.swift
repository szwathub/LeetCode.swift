import XCTest
@testable import LeetCode

final class ReverseIntegerSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var x: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(x: 321), answer: 123),
            .init(parameter: .init(x: -123), answer: -321),
            .init(parameter: .init(x: 120), answer: 21),
            .init(parameter: .init(x: 1534236469), answer: 0)
        ]
    }

    func testReverseInteger() {
        let solution = ReverseInteger()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.reverse(parameter.x), answer)
        }
    }
}
