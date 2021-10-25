import XCTest
@testable import LeetCode

final class TwoSumSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var nums: [Int]
            var target: Int
        }

        var parameter: Parameter
        var answer: [Int]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(nums: [3, 2, 4], target: 6), answer: [1, 2]),
            .init(parameter: .init(nums: [3, 2, 4], target: 5), answer: [0, 1]),
            .init(parameter: .init(nums: [0, 8, 7, 3, 3, 4, 2], target: 11), answer: [1, 3]),
            .init(parameter: .init(nums: [0, 1], target: 1), answer: [0, 1]),
            .init(parameter: .init(nums: [0, 1], target: 2), answer: [])
        ]
    }

    func testTwoSum() {
        let solution = TwoSum()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.twoSum(parameter.nums, parameter.target), answer)
        }
    }
}
