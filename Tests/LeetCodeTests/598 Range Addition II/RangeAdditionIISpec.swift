import XCTest
@testable import LeetCode

final class RangeAdditionIISpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var m: Int
            var n: Int
            var ops: [[Int]]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(m: 3, n: 3, ops: [
                [2, 2], [3, 3]
            ]), answer: 4),

            .init(parameter: .init(m: 3, n: 3, ops: [
                [2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3],
                [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3]
            ]), answer: 4),

            .init(parameter: .init(m: 3, n: 3, ops: []), answer: 9),
            .init(parameter: .init(m: 18, n: 3, ops: [
                [16, 1], [14, 3], [14, 2], [4, 1], [10, 1], [11, 1], [8, 3],
                [16, 2], [13, 1], [8, 3], [2, 2], [9, 1], [3, 1], [2, 2], [6, 3]
            ]), answer: 2)
        ]
    }

    func testRangeAdditionII() {
        let solution = RangeAdditionII()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.maxCount(parameter.m, parameter.n, parameter.ops), answer)
        }
    }
}
