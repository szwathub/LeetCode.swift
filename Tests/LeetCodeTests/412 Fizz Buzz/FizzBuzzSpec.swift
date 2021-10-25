import XCTest
@testable import LeetCode

class FizzBuzzSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var n: Int
        }

        var parameter: Parameter
        var answer: [String]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(n: 3),
                     answer: ["1", "2", "Fizz"]),
            .init(parameter: .init(n: 5),
                     answer: ["1", "2", "Fizz", "4", "Buzz"]),
            .init(parameter: .init(n: 15),
                     answer: ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz",
                              "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
        ]
    }

    func testDestinationCity() throws {
        let solution = FizzBuzz()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            XCTAssertEqual(solution.fizzBuzz(parameter.n), answer)
        }
    }
}
