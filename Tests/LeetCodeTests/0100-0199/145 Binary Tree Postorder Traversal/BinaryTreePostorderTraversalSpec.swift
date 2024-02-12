import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreePostorderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int])] = [
        (([1, nil, 2, 3]), [3, 2, 1]),
        (([]), []),
        (([1]), [1])
    ]

    func test() {
        let solution = BinaryTreePostorderTraversal()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.postorderTraversal(BinaryTree(elements)), answer)
        }
    }
}
