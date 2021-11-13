import XCTest
@testable import LeetCode

final class NthTribonacciNumberSpec: XCTestCase {
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
            .init(parameter: .init(n: 0), answer: 0),
            .init(parameter: .init(n: 1), answer: 1),
            .init(parameter: .init(n: 2), answer: 1),
            .init(parameter: .init(n: 3), answer: 2),
            .init(parameter: .init(n: 4), answer: 4),
            .init(parameter: .init(n: 25), answer: 1389537)
        ]
    }

    func testNthTribonacciNumber() {
        let solution = NthTribonacciNumber()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.tribonacci(parameter.n), answer)
        }
    }
}
