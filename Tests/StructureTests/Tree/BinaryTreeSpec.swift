import XCTest
@testable import Structure

class BinaryTreeSpec: XCTestCase {

    func testBinaryTree() {
        let tree = BinaryTree<Int>()
        XCTAssertNil(tree.root)

        let empty: BinaryTree<Int> = []
        XCTAssertNil(empty.root)
        XCTAssertTrue(empty.isEmpty)

        let literal: BinaryTree = [8, 2, 10, 9, 7, 5]
        XCTAssertEqual(literal.root?.value, 8)

        let other = BinaryTree([nil, 1, 2])
        XCTAssertNil(other.root)
        XCTAssertEqual(other.description, "")

        let description: BinaryTree = [8, 2, 10]
        XCTAssertEqual(description.description, "{value: 8, left = {value: 2}, right = {value: 10}}")
    }

    func testBinaryTreeNode() {
        let node = BinaryTree<Int>.Node(value: 10)
        node.value = 11
        XCTAssertEqual(node.value, 11)
    }

    func testBinaryTreeNodeEquatable() {
        let literal: BinaryTree = [8, 2, 10, 9, 7, 5]
        let equte = BinaryTree([8, 2, 10, 9, 7, 5])
        XCTAssertTrue(literal.root == equte.root)

        let tree: BinaryTree = [8, 10, 9, 7, 5]
        XCTAssertFalse(literal.root == tree.root)
    }

    func testTraversal() {
        let tree = BinaryTree([8, 2, 10, 9, 7, 5])
        var answer = [Int]()
        tree.root?.preorderTraversal({ answer.append($0) })
        XCTAssertEqual(answer, [8, 2, 9, 7, 10, 5])

        answer.removeAll()
        tree.root?.inorderTraversal({ answer.append($0) })
        XCTAssertEqual(answer, [9, 2, 7, 8, 5, 10])

        answer.removeAll()
        tree.root?.postorderTraversal({ answer.append($0) })
        XCTAssertEqual(answer, [9, 7, 2, 5, 10, 8])
    }
}
