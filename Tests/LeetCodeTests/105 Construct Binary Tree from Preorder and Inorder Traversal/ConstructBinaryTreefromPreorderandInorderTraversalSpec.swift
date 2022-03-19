import XCTest
@testable import LeetCode
@testable import Structure

final class ConstructBinaryTreefromPreorderandInorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int]), [Int?])] = [
        (([3, 9, 20, 15, 7], [9, 3, 15, 20, 7]), [3, 9, 20, nil, nil, 15, 7]),
        (([-1], [-1]), [-1])
    ]

    func testConstructBinaryTreefromPreorderandInorderTraversal() {
        let solution = ConstructBinaryTreefromPreorderandInorderTraversal()
        for ((preorder, inorder), answer) in questions {
            XCTAssertTrue(solution.buildTree(preorder, inorder) == BinaryTree(answer).root)
        }
    }
}
