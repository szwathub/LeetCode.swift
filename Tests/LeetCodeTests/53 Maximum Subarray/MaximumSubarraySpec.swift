import XCTest
@testable import LeetCode

final class MaximumSubarraySpec: XCTestCase {
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
            .init(parameter: .init(nums: [-2, 1, -3, 4, -1, 2, 1, -5, 4]), answer: 6),
            .init(parameter: .init(nums: [1]), answer: 1),
            .init(parameter: .init(nums: [5, 4, -1, 7, 8]), answer: 23),
            .init(parameter: .init(nums: [-1]), answer: -1),
            .init(parameter: .init(nums: []), answer: 0)
        ]
    }

    func testMaximumSubarray() {
        let solution = MaximumSubarray()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.maxSubArray(parameter.nums), answer)
            XCTAssertEqual(solution.maxSubArrayII(parameter.nums), answer)
        }
    }
}
