import XCTest
@testable import LeetCode

final class DistributeCandiesSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var candyType: [Int]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(candyType: [1, 1, 2, 2, 3, 3]), answer: 3),
            .init(parameter: .init(candyType: [1, 1, 2, 3]), answer: 2),
            .init(parameter: .init(candyType: [6, 6, 6, 6]), answer: 1)
        ]
    }

    func testDistributeCandies() {
        let solution = DistributeCandies()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.distributeCandies(parameter.candyType), answer)
        }
    }
}
