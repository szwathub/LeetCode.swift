import XCTest
@testable import LeetCode
@testable import Structure

final class ValidateBinarySearchTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Bool)] = [
        (([2, 1, 3]), true),
        (([5, 1, 4, nil, nil, 3, 6]), false)
    ]

    func testValidateBinarySearchTree() {
        let solution = ValidateBinarySearchTree()
        for ((elements), answer) in questions {
            let tree = BinaryTree(elements)
            XCTAssertEqual(solution.isValidBST(tree.root), answer)
        }
    }
}
