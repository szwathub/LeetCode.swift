import XCTest
@testable import LeetCode

final class BullsandCowsSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var secret: String
            var guess: String
        }

        var parameter: Parameter
        var answer: String
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(secret: "1807", guess: "7810"), answer: "1A3B"),
            .init(parameter: .init(secret: "1123", guess: "0111"), answer: "1A1B"),
            .init(parameter: .init(secret: "1", guess: "0"), answer: "0A0B"),
            .init(parameter: .init(secret: "1", guess: "1"), answer: "1A0B"),
            .init(parameter: .init(secret: "1122", guess: "2211"), answer: "0A4B")
        ]
    }

    func testBullsandCows() {
        let solution =  BullsandCows()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.getHint(parameter.secret, parameter.guess), answer)
        }
    }
}
