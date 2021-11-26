import XCTest
@testable import Structure

class SinglyLinkedListSpec: XCTestCase {
    func testLinkedList() {
        let link = SinglyLinkedList<Int>()
        XCTAssertTrue(link.isEmpty)
        XCTAssertNil(link.head)
        XCTAssertNil(link.tail)
        XCTAssertEqual(link.description, "")

        let literal: SinglyLinkedList = [8, 2, 10, 9, 7, 5]
        let description = "(8) --> (2) --> (10) --> (9) --> (7) --> (5)"
        XCTAssertEqual(literal.description, description)
    }

    func testNodeEqualable() {
        let literal: SinglyLinkedList = [8, 2, 10, 9, 7, 5]
        XCTAssertTrue(literal.head == SinglyLinkedList([8, 2, 10, 9, 7, 5]).head)
        XCTAssertFalse(literal.head == SinglyLinkedList([8, 2, 10, 9, 8, 5]).head)
        XCTAssertFalse(literal.head == SinglyLinkedList([8, 2, 10, 9, 7]).head)
    }

    func testSearchNode() {
        let literal: SinglyLinkedList = [8, 2, 10, 9, 7, 5]
        if let head = literal.head {
            XCTAssertNil(head.firstNode(of: 11))
            let find = head.firstNode(of: 2)
            XCTAssertEqual(find?.value, 2)
        }
    }

    func testLinkedListNode() {
        let node = SinglyLinkedList<Int>.Node(value: 0)
        XCTAssertEqual(node.value, 0)
        node.value = 11
        XCTAssertEqual(node.value, 11)
    }
}
