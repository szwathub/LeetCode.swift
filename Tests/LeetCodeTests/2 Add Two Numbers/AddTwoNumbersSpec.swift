import XCTest
@testable import LeetCode

final class AddTwoNumbersSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var l1: [Int]
            var l2: [Int]
        }

        var parameter: Parameter
        var answer: [Int]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(l1: [], l2: []), answer: []),
            .init(parameter: .init(l1: [1], l2: [1]), answer: [2]),
            .init(parameter: .init(l1: [1, 2, 3, 4], l2: [1, 2, 3, 4]),
                  answer: [2, 4, 6, 8]),
            .init(parameter: .init(l1: [1, 2, 3, 4, 5], l2: [1, 2, 3, 4, 5]),
                  answer: [2, 4, 6, 8, 0, 1]),
            .init(parameter: .init(l1: [1], l2: [9, 9, 9, 9, 9]),
                  answer: [0, 0, 0, 0, 0, 1]),
            .init(parameter: .init(l1: [9, 9, 9, 9, 9], l2: [1]),
                  answer: [0, 0, 0, 0, 0, 1]),
            .init(parameter: .init(l1: [2, 4, 3], l2: [5, 6, 4]), answer: [7, 0, 8]),
            .init(parameter: .init(l1: [1, 8, 3], l2: [7, 1]), answer: [8, 9, 3])
        ]
    }

    func testAddTwoNumbers() {
        let solution = AddTwoNumbers()
        for question in questions {
            let parameter = question.parameter
            let answer = solution.addTwoNumbers(SinglyLinkedList(parameter.l1).head,
                                                SinglyLinkedList(parameter.l2).head)

            XCTAssertTrue(answer == SinglyLinkedList(question.answer).head)
        }
    }
}
