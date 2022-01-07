import XCTest
@testable import LeetCode
@testable import Structure

final class InvertBinaryTreeSpec: XCTestCase {

    fileprivate let questions: [(([Int?]), [Int?])] = [
        (([4, 2, 7, 1, 3, 6, 9]), [4, 7, 2, 9, 6, 3, 1]),
        (([2, 1, 3]), [2, 3, 1]),
        (([]), [])
    ]

    func testInvertBinaryTree() {
        let solution = InvertBinaryTree()
        for ((elements), answer) in questions {
            let tree = BinaryTree(elements)
            let inverted = solution.invertTree(tree.root)
            XCTAssertTrue(inverted == BinaryTree(answer).root)
        }
    }
}
