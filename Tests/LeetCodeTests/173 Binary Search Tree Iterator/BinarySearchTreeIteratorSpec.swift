import XCTest
@testable import LeetCode
@testable import Structure

final class BinarySearchTreeIteratorSpec: XCTestCase {

    func testBinarySearchTreeIterator() {
        let tree = BinaryTree([7, 3, 15, nil, nil, 9, 20])
        let bSTIterator = BSTIterator(tree.root)

        XCTAssertEqual(bSTIterator.next(), 3)
        XCTAssertEqual(bSTIterator.next(), 7)
        XCTAssertEqual(bSTIterator.hasNext(), true)
        XCTAssertEqual(bSTIterator.next(), 9)
        XCTAssertEqual(bSTIterator.hasNext(), true)
        XCTAssertEqual(bSTIterator.next(), 15)
        XCTAssertEqual(bSTIterator.hasNext(), true)
        XCTAssertEqual(bSTIterator.next(), 20)
        XCTAssertEqual(bSTIterator.hasNext(), false)
    }
}
