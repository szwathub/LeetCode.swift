import XCTest
@testable import LeetCode

final class SingleNumberIIISpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var nums: [Int]
        }

        var parameter: Parameter
        var answer: [Int]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(nums: [1, 2, 1, 3, 2, 5]), answer: [3, 5]),
            .init(parameter: .init(nums: [-1, 0]), answer: [-1, 0]),
            .init(parameter: .init(nums: [0, 1]), answer: [0, 1])
        ]
    }

    func testSingleNumberIII() {
        let solution = SingleNumberIII()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.singleNumber(parameter.nums).sorted(), answer.sorted())
        }
    }
}
