import XCTest
@testable import LeetCode

class BinaryTreeSpec: XCTestCase {
    func testEmptyBinaryTree() {
        let tree = BinaryTree<Int>()
        XCTAssertNil(tree.root)

        let empty: BinaryTree<Int> = []
        XCTAssertNil(empty.root)

        let literal: BinaryTree = [8, 2, 10, 9, 7, 5]
        XCTAssertEqual(literal.root?.val, 8)
    }

    func testBinaryTreeNode() {
        let node = TreeNode()
        XCTAssertNil(node.value)
        XCTAssertEqual(node.val, 0)
        node.val = 11
        XCTAssertEqual(node.val, 11)

        let node1 = TreeNode(value: 10, left: node)
        XCTAssertEqual(node1.val, 10)
    }
}
