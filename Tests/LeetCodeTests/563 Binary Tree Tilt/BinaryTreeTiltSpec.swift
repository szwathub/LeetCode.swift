import XCTest
@testable import LeetCode

final class BinaryTreeTiltSpec: XCTestCase {
    fileprivate struct Question {
        struct Parameter {
            var tree: [Int?]
        }

        var parameter: Parameter
        var answer: Int
    }

    fileprivate var questions: [Question]!

    override func setUp() {
        questions = [
            .init(parameter: .init(tree: [1, 2, 3]), answer: 1),
            .init(parameter: .init(tree: [4, 2, 9, 3, 5, nil, 7]), answer: 15)
        ]
    }

    func testBinaryTreeTilt() {
        let solution = BinaryTreeTilt()
        for question in questions {
            solution.tilt = 0
            let tree = BinaryTree(question.parameter.tree)
            let answer = question.answer

            XCTAssertEqual(solution.findTilt(tree.root), answer)
        }
    }
}
