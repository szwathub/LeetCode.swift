import XCTest
@testable import LeetCode

final class FirstBadVersionSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var n: Int
            var bad: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(n: 5, bad: 4), answer: 4),
            .init(parameter: .init(n: 2, bad: 2), answer: 2),
            .init(parameter: .init(n: 10, bad: 2), answer: 2)
        ]
    }

    func testFirstBadVersion() {
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer
            let solution = FirstBadVersion(parameter.bad)

            XCTAssertEqual(solution.firstBadVersion(parameter.n), answer)
        }
    }
}
