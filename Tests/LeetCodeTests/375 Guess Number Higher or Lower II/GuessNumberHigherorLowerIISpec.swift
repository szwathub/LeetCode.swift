import XCTest
@testable import LeetCode

final class GuessNumberHigherorLowerIISpec: XCTestCase {
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
            .init(parameter: .init(n: 10), answer: 16),
            .init(parameter: .init(n: 1), answer: 0),
            .init(parameter: .init(n: 2), answer: 1)
        ]
    }

    func testGuessNumberHigherorLowerII() {
        let solution = GuessNumberHigherorLowerII()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.getMoneyAmount(parameter.n), answer)
        }
    }
}
