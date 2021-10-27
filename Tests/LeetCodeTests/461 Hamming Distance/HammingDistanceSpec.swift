import XCTest
@testable import LeetCode

final class HammingDistanceSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var x: Int
            var y: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(x: 1, y: 4), answer: 2),
            .init(parameter: .init(x: 3, y: 1), answer: 1)
        ]
    }

    func testHammingDistance() {
        let solution = HammingDistance()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.hammingDistance(parameter.x, parameter.y), answer)
        }
    }
}
