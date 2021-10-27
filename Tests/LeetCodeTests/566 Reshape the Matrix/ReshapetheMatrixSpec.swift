import XCTest
@testable import LeetCode

final class ReshapetheMatrixSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var mat: [[Int]]
            var r: Int
            var c: Int
        }

        var parameter: Parameter
        var answer: [[Int]]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(mat: [[1, 2], [3, 4]], r: 1, c: 4), answer: [[1, 2, 3, 4]]),
            .init(parameter: .init(mat: [[1, 2], [3, 4]], r: 2, c: 4), answer: [[1, 2], [3, 4]])
        ]
    }

    func testReshapetheMatrix() {
        let solution = ReshapetheMatrix()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.matrixReshape(parameter.mat, parameter.r, parameter.c), answer)
        }
    }
}
