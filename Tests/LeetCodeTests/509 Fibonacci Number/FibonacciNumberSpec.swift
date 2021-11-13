import XCTest
@testable import LeetCode

final class FibonacciNumberSpec: XCTestCase {
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
            .init(parameter: .init(n: 1), answer: 1),
            .init(parameter: .init(n: 2), answer: 1),
            .init(parameter: .init(n: 3), answer: 2),
            .init(parameter: .init(n: 4), answer: 3)
        ]
    }

    func testFibonacciNumber() {
        let solution = FibonacciNumber()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.fib(parameter.n), answer)
        }
    }
}
