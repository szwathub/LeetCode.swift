import XCTest
@testable import Structure

class TreeSpec: XCTestCase {
    func testTreeNode() {
        let node = Tree<Int>.Node(value: 10)
        XCTAssertEqual(node.value, 10)

        node.value = 11
        XCTAssertEqual(node.value, 11)
    }
}
