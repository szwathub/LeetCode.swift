import XCTest
@testable import LeetCode
@testable import Structure

final class BinaryTreeZigzagLevelOrderTraversalSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [[Int]])] = [
        (([3, 9, 20, nil, nil, 15, 7]), [[3], [20, 9], [15, 7]]),
        (([1]), [[1]]),
        (([]), [])
    ]

    func test() {
        let solution = BinaryTreeZigzagLevelOrderTraversal()
        for ((elements), answer) in questions {
            XCTAssertEqual(solution.zigzagLevelOrder(BinaryTree(elements)), answer)
        }
    }
}
