import XCTest
@testable import LeetCode

final class KeyboardRowSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var words: [String]
        }

        var parameter: Parameter
        var answer: [String]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(words: ["Hello", "Alaska", "Dad", "Peace"]), answer: ["Alaska", "Dad"]),
            .init(parameter: .init(words: ["omk"]), answer: []),
            .init(parameter: .init(words: ["adsdf", "sfd"]), answer: ["adsdf", "sfd"]),
            .init(parameter: .init(words: ["Aasdfghjkl", "Qwertyuiop", "zZxcvbnm"]),
                                  answer: ["Aasdfghjkl", "Qwertyuiop", "zZxcvbnm"])
        ]
    }

    func testKeyboardRow() {
        let solution = KeyboardRow()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.findWords(parameter.words), answer)
        }
    }
}
