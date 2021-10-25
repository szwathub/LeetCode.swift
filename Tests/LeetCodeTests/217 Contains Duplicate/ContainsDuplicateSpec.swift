import XCTest
@testable import LeetCode

class ContainsDuplicateSpec: XCTestCase {
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
            .init(parameter: .init(nums: [1, 2, 3, 1]), answer: true),
            .init(parameter: .init(nums: [1, 2, 3, 4]), answer: false),
            .init(parameter: .init(nums: [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]), answer: true)
        ]
    }

    func testDestinationCity() throws {
        let solution = ContainsDuplicate()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.containsDuplicate(parameter.nums), answer)
        }
    }
}
