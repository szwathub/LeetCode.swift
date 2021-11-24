import XCTest
@testable import LeetCode

final class ReconstructOriginalDigitsfromEnglishSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var s: String
        }

        var parameter: Parameter
        var answer: String
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(s: "owoztneoer"), answer: "012"),
            .init(parameter: .init(s: "fviefuro"), answer: "45"),
            .init(parameter: .init(s: "three"), answer: "3")
        ]
    }

    func testReconstructOriginalDigitsfromEnglish() {
        let solution = ReconstructOriginalDigitsfromEnglish()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.originalDigits(parameter.s), answer)
        }
    }
}
