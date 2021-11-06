import XCTest
@testable import LeetCode

final class MissingNumberSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var nums: [Int]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(nums: [3, 0, 1]), answer: 2),
            .init(parameter: .init(nums: [0, 1]), answer: 2),
            .init(parameter: .init(nums: [9, 6, 4, 2, 3, 5, 7, 0, 1]), answer: 8),
            .init(parameter: .init(nums: [0]), answer: 1)
        ]
    }

    func testMissingNumber() {
        let solution = MissingNumber()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.missingNumber(parameter.nums), answer)
        }
    }
}
