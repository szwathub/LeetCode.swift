import XCTest
@testable import LeetCode

final class SetMatrixZeroesSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var matrix: [[Int]]
        }

        var parameter: Parameter
        var answer: [[Int]]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(matrix: [[1, 1, 1], [1, 0, 1], [1, 1, 1]]),
                     answer: [[1, 0, 1], [0, 0, 0], [1, 0, 1]]),
            .init(parameter: .init(matrix: [[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]),
                     answer: [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]])
        ]
    }

    func testSetMatrixZeroes() {
        let solution = SetMatrixZeroes()
        for question in questions {
            var matrix = question.parameter.matrix
            let answer = question.answer

            solution.setZeroes(&matrix)
            XCTAssertEqual(matrix, answer)
        }
    }
}
