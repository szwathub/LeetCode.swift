import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreeInorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([1, nil, 2, 3]), [1, 3, 2]),
        (([]), []),
        (([1]), [1])
    ]

    func test() {
        let solution = BinaryTreeInorderTraversal()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.inorderTraversal(BinaryTree(elements)), answer)
        }
    }
}
