import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreePreorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([1, nil, 2, 3]), [1, 2, 3]),
        (([]), []),
        (([1]), [1])
    ]

    func test() {
        let solution = BinaryTreePreorderTraversal()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.preorderTraversal(BinaryTree(elements)), answer)
        }
    }
}
