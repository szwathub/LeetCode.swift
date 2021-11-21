import XCTest
@testable import LeetCode

class TreeSpec: XCTestCase {
    func testTreeNode() {
        let node = Node()
        XCTAssertNil(node.value)
        XCTAssertEqual(node.val, 0)
        node.val = 11
        XCTAssertEqual(node.val, 11)
    }

}
