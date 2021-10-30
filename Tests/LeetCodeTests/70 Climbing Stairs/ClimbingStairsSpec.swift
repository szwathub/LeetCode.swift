import XCTest
@testable import LeetCode

final class ClimbingStairsSpec: XCTestCase {
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
            .init(parameter: .init(n: 2), answer: 2),
            .init(parameter: .init(n: 3), answer: 3)
        ]
    }

    func testClimbingStairs() {
        let solution = ClimbingStairs()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.climbStairs(parameter.n), answer)
        }
    }
}
