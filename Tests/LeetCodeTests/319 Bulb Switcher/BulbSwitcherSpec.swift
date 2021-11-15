import XCTest
@testable import LeetCode

final class BulbSwitcherSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var n: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(n: 3), answer: 1),
            .init(parameter: .init(n: 0), answer: 0),
            .init(parameter: .init(n: 1), answer: 1)
        ]
    }

    func testBulbSwitcher() {
        let solution = BulbSwitcher()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.bulbSwitch(parameter.n), answer)
        }
    }
}
