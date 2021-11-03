import XCTest
@testable import LeetCode

final class TrappingRainWaterSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var height: [Int]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(height: [0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]), answer: 6),
            .init(parameter: .init(height: [4, 2, 0, 3, 2, 5]), answer: 9),
            .init(parameter: .init(height: [0, 1, 5, 3, 4, 4, 0]), answer: 1)
        ]
    }

    func testTrappingRainWater() {
        let solution = TrappingRainWater()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.trap(parameter.height), answer)
        }
    }
}
