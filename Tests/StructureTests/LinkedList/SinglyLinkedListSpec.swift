import XCTest
@testable import LeetCode
@testable import Structure

class SinglyLinkedListSpec: XCTestCase {
    func testEmptyList() {
        let linkList = SinglyLinkedList<Int>()

        XCTAssertNil(linkList.head)
        XCTAssertNil(linkList.tail)
    }

    func testEqualable() {
        let literal: SinglyLinkedList = [8, 2, 10, 9, 7, 5]
        XCTAssertTrue(literal == SinglyLinkedList(elements: [8, 2, 10, 9, 7, 5]))
        XCTAssertFalse(literal == SinglyLinkedList(elements: [8, 2, 10, 9, 8, 5]))
        XCTAssertFalse(literal == SinglyLinkedList(elements: [8, 2, 10, 9, 7]))
    }

    func testSubscript() {
        let literal: SinglyLinkedList = [8, 2, 10, 9, 7, 5]
        XCTAssertNil(literal[11])
        XCTAssertEqual(literal[2]?.val, 2)
    }

    func testLinkedListNode() {
        let node = ListNode()
        XCTAssertNil(node.value)
        XCTAssertEqual(node.val, 0)
        node.val = 11
        XCTAssertEqual(node.val, 11)

        let node1 = ListNode(value: 10, next: node)
        XCTAssertEqual(node1.val, 10)
    }
}
