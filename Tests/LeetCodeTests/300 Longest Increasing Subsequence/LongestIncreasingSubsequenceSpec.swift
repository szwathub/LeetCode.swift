import XCTest
@testable import LeetCode

final class LongestIncreasingSubsequenceSpec: XCTestCase {
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
            .init(parameter: .init(nums: [10, 9, 2, 5, 3, 7, 101, 18]), answer: 4),
            .init(parameter: .init(nums: [0, 1, 0, 3, 2, 3]), answer: 4),
            .init(parameter: .init(nums: [7, 7, 7, 7, 7, 7, 7]), answer: 1),
            .init(parameter: .init(nums: []), answer: 0),
            .init(parameter: .init(nums: [1]), answer: 1),
            .init(parameter: .init(nums: [3, 5, 6, 2, 5, 4, 19, 5, 6, 7, 12]), answer: 6)
        ]
    }

    func testLongestIncreasingSubsequence() {
        let solution = LongestIncreasingSubsequence()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.lengthOfLIS(parameter.nums), answer)
            XCTAssertEqual(solution.lengthOfLISII(parameter.nums), answer)
        }
    }
}
