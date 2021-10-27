import XCTest
@testable import LeetCode

final class ReverseBitsSpec: XCTestCase {
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
            .init(parameter: .init(n: 43261596), answer: 964176192),
            .init(parameter: .init(n: 4294967293), answer: 3221225471)
        ]
    }

    func testReverseBits() {
        let solution = ReverseBits()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.reverseBits(parameter.n), answer)
        }
    }
}
