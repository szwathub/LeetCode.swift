import XCTest
@testable import LeetCode

final class ValidAnagramSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var s: String
            var t: String
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(s: "anagram", t: "nagaram"), answer: true),
            .init(parameter: .init(s: "rat", t: "car"), answer: false),
            .init(parameter: .init(s: "anagram", t: "car"), answer: false)
        ]
    }

    func testValidAnagram() {
        let solution = ValidAnagram()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.isAnagram(parameter.s, parameter.t), answer)
        }
    }
}
