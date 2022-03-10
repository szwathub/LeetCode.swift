import XCTest
@testable import Structure

class TreeSpec: XCTestCase {
    func testTreeNode() {
        let node = Tree<Int>.Node(value: 10)
        XCTAssertEqual(node.value, 10)

        node.value = 11
        XCTAssertEqual(node.value, 11)
    }

    func testEmptyTree() {
        var emptyTree = Tree<Int>()
        XCTAssertTrue(emptyTree.isEmpty)

        emptyTree = []
        XCTAssertTrue(emptyTree.isEmpty)
    }

    func testBinaryTree() {
        let tree = Tree<Int>()
        XCTAssertNil(tree.root)

        let empty: Tree<Int> = []
        XCTAssertNil(empty.root)
        XCTAssertTrue(empty.isEmpty)

        let literal: Tree = [8, 2, 10, 9, 7, 5]
        XCTAssertEqual(literal.root?.value, 8)

        let other = Tree([8, nil, 1, 2, 7])
        XCTAssertEqual(other.root?.value, 8)
        XCTAssertEqual(other.description, "{value: 8, children: {value: 1}, {value: 2}, {value: 7}}")

        let elements: [Int?] = []
        let otherT = Tree(elements)
        XCTAssertEqual(otherT.description, "")
    }
}
