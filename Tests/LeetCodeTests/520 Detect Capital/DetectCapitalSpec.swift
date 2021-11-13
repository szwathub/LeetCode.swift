import XCTest
@testable import LeetCode

final class DetectCapitalSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var word: String
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(word: "USA"), answer: true),
            .init(parameter: .init(word: "FlaG"), answer: false),
            .init(parameter: .init(word: "aBcd"), answer: false),
            .init(parameter: .init(word: "aaaBasd"), answer: false)
        ]
    }

    func testDetectCapital() {
        let solution = DetectCapital()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.detectCapitalUse(parameter.word), answer)
        }
    }
}
