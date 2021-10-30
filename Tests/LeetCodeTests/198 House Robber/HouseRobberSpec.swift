import XCTest
@testable import LeetCode

final class HouseRobberSpec: XCTestCase {
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
            .init(parameter: .init(nums: [1, 2, 3, 1]), answer: 4),
            .init(parameter: .init(nums: [2, 7, 9, 3, 1]), answer: 12),
            .init(parameter: .init(nums: [2, 1, 1, 2]), answer: 4),
            .init(parameter: .init(nums: [1]), answer: 1),
            .init(parameter: .init(nums: []), answer: 0)
        ]
    }

    func testHouseRobberSpec() {
        let solution = HouseRobber()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.rob(parameter.nums), answer)
        }
    }
}
