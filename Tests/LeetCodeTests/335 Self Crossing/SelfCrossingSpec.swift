import XCTest
@testable import LeetCode

final class SelfCrossingSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var distance: [Int]
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(distance: [1, 2, 3]), answer: false),
            .init(parameter: .init(distance: [2, 1, 1, 2]), answer: true),
            .init(parameter: .init(distance: [1, 2, 3, 4]), answer: false),
            .init(parameter: .init(distance: [1, 1, 1, 1]), answer: true),
            .init(parameter: .init(distance: [1, 1, 2, 1, 1]), answer: true),
            .init(parameter: .init(distance: [1, 2, 3, 4, 2, 2]), answer: true)
        ]
    }

    func testSelfCrossing() {
        let solution = SelfCrossing()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.isSelfCrossing(parameter.distance), answer)
        }
    }
}
