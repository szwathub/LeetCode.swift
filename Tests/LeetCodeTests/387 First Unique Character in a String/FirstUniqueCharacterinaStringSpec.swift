import XCTest
@testable import LeetCode

final class FirstUniqueCharacterinaStringSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var s: String
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(s: "leetcode"), answer: 0),
            .init(parameter: .init(s: "loveleetcode"), answer: 2),
            .init(parameter: .init(s: "codecode"), answer: -1)
        ]
    }

    func testFirstUniqueCharacterinaStringSpec() {
        let solution = FirstUniqueCharacterinaString()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.firstUniqChar(parameter.s), answer)
        }
    }
}
