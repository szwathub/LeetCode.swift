import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreeLevelOrderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [[Int]])] = [
        (([3, 9, 20, nil, nil, 15, 7]), [[3], [9, 20], [15, 7]]),
        (([1]), [[1]]),
        (([]), [])
    ]

    func test() {
        let solution = BinaryTreeLevelOrderTraversal()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.levelOrder(BinaryTree(elements)), answer)
        }
    }
}
