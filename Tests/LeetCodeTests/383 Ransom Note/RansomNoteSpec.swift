import XCTest
@testable import LeetCode

final class RansomNoteSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var ransomNote: String
            var magazine: String
        }

        var parameter: Parameter
        var answer: Bool
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(ransomNote: "a", magazine: "b"), answer: false),
            .init(parameter: .init(ransomNote: "aa", magazine: "ab"), answer: false),
            .init(parameter: .init(ransomNote: "aa", magazine: "aab"), answer: true),
            .init(parameter: .init(ransomNote: "aaaa", magazine: "aab"), answer: false)
        ]
    }

    func testRansomNote() {
        let solution = RansomNote()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.canConstruct(parameter.ransomNote, parameter.magazine), answer)
        }
    }
}
