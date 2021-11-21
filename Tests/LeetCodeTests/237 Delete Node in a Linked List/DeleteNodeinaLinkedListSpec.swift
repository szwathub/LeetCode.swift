import XCTest
@testable import LeetCode

final class DeleteNodeinaLinkedListSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var head: [Int]
            var node: Int
        }

        var parameter: Parameter
        var answer: [Int]
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(head: [4, 5, 1, 9], node: 5), answer: [4, 1, 9]),
            .init(parameter: .init(head: [4, 5, 1, 9], node: 1), answer: [4, 5, 9]),
            .init(parameter: .init(head: [1, 2, 3, 4], node: 3), answer: [1, 2, 4]),
            .init(parameter: .init(head: [0, 1], node: 0), answer: [1]),
            .init(parameter: .init(head: [-3, 5, -99], node: -3), answer: [5, -99])
        ]
    }

    func testDeleteNodeinaLinkedList() {
        let solution = DeleteNodeinaLinkedList()
        for question in questions {
            let parameter = question.parameter
            let answer = question.answer

            let list = SinglyLinkedList(elements:parameter.head)
            let node = list[parameter.node]
            solution.deleteNode(node)

            XCTAssertTrue(list == SinglyLinkedList(elements: answer))
        }
    }
}
