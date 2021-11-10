import XCTest
@testable import LeetCode

final class TeemoAttackingSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var timeSeries: [Int]
            var duration: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(timeSeries: [1, 4], duration: 2), answer: 4),
            .init(parameter: .init(timeSeries: [1, 2], duration: 2), answer: 3),
            .init(parameter: .init(timeSeries: [1, 2, 3, 4, 5], duration: 5), answer: 9)
        ]
    }

    func testTeemoAttacking() {
        let solution = TeemoAttacking()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.findPoisonedDuration(parameter.timeSeries, parameter.duration), answer)
        }
    }
}
