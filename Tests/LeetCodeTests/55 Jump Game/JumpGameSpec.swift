import XCTest
@testable import LeetCode

final class JumpGameSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var nums: [Int]
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(nums: [2, 3, 1, 1, 4]), answer: true),
            .init(parameter: .init(nums: [3, 2, 1, 0, 4]), answer: false)
        ]
    }

    func testJumpGame() {
        let solution = JumpGame()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.canJump(parameter.nums), answer)
        }
    }
}
