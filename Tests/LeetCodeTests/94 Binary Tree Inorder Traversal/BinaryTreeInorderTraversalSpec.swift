import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreeInorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([1, nil, 2, 3]), [1, 3, 2]),
        (([]), []),
        (([1]), [1])
    ]

    func testTwoSum() {
        let solution = BinaryTreeInorderTraversal()
        for ((elements), answer) in questions {
            let tree = BinaryTree(elements)
            XCTAssertEqual(solution.inorderTraversal(tree.root), answer)
        }
    }
}
