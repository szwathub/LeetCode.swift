import XCTest
@testable import LeetCode
@testable import Structure

final class MaximumDepthofBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), Int)] = [
        (([3, 9, 20, nil, nil, 15, 7]), 3),
        (([1, nil, 2]), 2),
        (([]), 0)
    ]

    func testMaximumDepthofBinaryTree() {
        let solution = MaximumDepthofBinaryTree()
        for ((elements), answer) in questions {
            let tree = BinaryTree(elements)
            XCTAssertEqual(solution.maxDepth(tree.root), answer)
        }
    }
}
