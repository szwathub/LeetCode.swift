import XCTest
@testable import LeetCode

final class PascalsTriangleSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var numRows: Int
        }

        var parameter: Parameter
        var answer: [[Int]]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(numRows: 1),
                     answer: [
                        [1]
                     ]),
            .init(parameter: .init(numRows: 5),
                     answer: [
                        [1],
                        [1, 1],
                        [1, 2, 1],
                        [1, 3, 3, 1],
                        [1, 4, 6, 4, 1]
                     ])
        ]
    }

    func testPascalsTriangle() {
        let solution = PascalsTriangle()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.generate(parameter.numRows), answer)
        }
    }
}
