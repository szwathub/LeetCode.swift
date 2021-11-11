import XCTest
@testable import LeetCode

final class KInversePairsArraySpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var n: Int
            var k: Int
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(n: 3, k: 0), answer: 1),
            .init(parameter: .init(n: 3, k: 1), answer: 2),
            .init(parameter: .init(n: 1, k: 0), answer: 1),
            .init(parameter: .init(n: 9, k: 6), answer: 1230)
        ]
    }

    func testKInversePairsArray() {
        let solution = KInversePairsArray()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.kInversePairs(parameter.n, parameter.k), answer)
        }
    }
}
