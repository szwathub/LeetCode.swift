import XCTest
@testable import LeetCode

final class ContainerWithMostWaterSpec: XCTestCase {
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
            .init(parameter: .init(height: [1, 8, 6, 2, 5, 4, 8, 3, 7]), answer: 49),
            .init(parameter: .init(height: [1, 1]), answer: 1),
            .init(parameter: .init(height: [4, 3, 2, 1, 4]), answer: 16),
            .init(parameter: .init(height: [1, 2, 1]), answer: 2)
        ]
    }

    func testTwoSum() {
        let solution = ContainerWithMostWater()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.maxArea(parameter.height), answer)
        }
    }
}
