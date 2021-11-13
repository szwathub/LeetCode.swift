import XCTest
@testable import LeetCode

final class MinCostClimbingStairsSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var cost: [Int]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(cost: []), answer: 0),
            .init(parameter: .init(cost: [10, 15]), answer: 10),
            .init(parameter: .init(cost: [10, 15, 20]), answer: 15),
            .init(parameter: .init(cost: [1, 100, 1, 1, 1, 100, 1, 1, 100, 1]), answer: 6)
        ]
    }

    func testMinCostClimbingStairs() {
        let solution = MinCostClimbingStairs()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.minCostClimbingStairs(parameter.cost), answer)
        }
    }
}
