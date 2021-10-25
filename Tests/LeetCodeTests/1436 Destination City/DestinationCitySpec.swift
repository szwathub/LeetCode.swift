import XCTest
@testable import LeetCode

class DestinationCitySpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var paths: [[String]]
        }

        var parameter: Parameter
        var answer: String
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(paths: [["London", "New York"], ["New York", "Lima"], ["Lima", "Sao Paulo"]]),
                     answer: "Sao Paulo"),
            .init(parameter: .init(paths: [["B", "C"], ["D", "B"], ["C", "A"]]), answer: "A"),
            .init(parameter: .init(paths: [["A", "Z"]]), answer: "Z")
        ]
    }

    func testDestinationCity() throws {
        let solution = DestinationCity()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.destCity(parameter.paths), answer)
        }
    }
}
