import XCTest
@testable import LeetCode

final class ValidPerfectSquareSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var num: Int
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(num: 16), answer: true),
            .init(parameter: .init(num: 14), answer: false)
        ]
    }

    func testValidPerfectSquare() {
        let solution = ValidPerfectSquare()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.isPerfectSquare(parameter.num), answer)
        }
    }
}
