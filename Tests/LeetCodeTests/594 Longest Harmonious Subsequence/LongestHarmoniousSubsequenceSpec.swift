import XCTest
@testable import LeetCode

final class LongestHarmoniousSubsequenceSpec: XCTestCase {
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
            .init(parameter: .init(nums: [1, 3, 2, 2, 5, 2, 3, 7]), answer: 5),
            .init(parameter: .init(nums: [1, 2, 3, 4]), answer: 2),
            .init(parameter: .init(nums: [1, 1, 1, 1]), answer: 0),
            .init(parameter: .init(nums: [-3, -1, -1, -1, -3, -2]), answer: 4)
        ]
    }

    func testLongestHarmoniousSubsequence() {
        let solution = LongestHarmoniousSubsequence()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.findLHS(parameter.nums), answer)
        }
    }
}
