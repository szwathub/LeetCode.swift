import XCTest
@testable import LeetCode

final class LongestArithmeticSubsequenceofGivenDifferenceSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var arr: [Int]
            var difference: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(arr: [1, 2, 3, 4], difference: 1), answer: 4),
            .init(parameter: .init(arr: [1, 3, 5, 7], difference: 1), answer: 1),
            .init(parameter: .init(arr: [1, 5, 7, 8, 5, 3, 4, 2, 1], difference: -2), answer: 4)
        ]
    }

    func testLongestArithmeticSubsequenceofGivenDifference() {
        let solution = LongestArithmeticSubsequenceofGivenDifference()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.longestSubsequence(parameter.arr, parameter.difference), answer)
        }
    }
}
