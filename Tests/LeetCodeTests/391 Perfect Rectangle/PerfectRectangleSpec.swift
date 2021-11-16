import XCTest
@testable import LeetCode

final class PerfectRectangleSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var rectangles: [[Int]]
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(rectangles: [
                [1, 1, 3, 3], [3, 1, 4, 2], [3, 2, 4, 4], [1, 3, 2, 4], [2, 3, 3, 4]]),
                     answer: true),
            .init(parameter: .init(rectangles: [
                [1, 1, 2, 3], [1, 3, 2, 4], [3, 1, 4, 2], [3, 2, 4, 4]]),
                     answer: false),
            .init(parameter: .init(rectangles: [
                [1, 1, 3, 3], [3, 1, 4, 2], [1, 3, 2, 4], [3, 2, 4, 4]]),
                     answer: false),
            .init(parameter: .init(rectangles: [
                [1, 1, 3, 3], [3, 1, 4, 2], [1, 3, 2, 4], [2, 2, 4, 4]]),
                     answer: false),
            .init(parameter: .init(rectangles: [
                [0, 0, 2, 2], [1, 1, 3, 3], [2, 0, 3, 1], [0, 3, 3, 4]]),
                     answer: false)
        ]
    }

    func testPerfectRectangle() {
        let solution = PerfectRectangle()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.isRectangleCover(parameter.rectangles), answer)
        }
    }
}
