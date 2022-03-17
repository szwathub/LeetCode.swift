import XCTest
@testable import LeetCode
@testable import Structure

final class DesignLinkedListSpec: XCTestCase {

    func testDesignLinkedList() {
        let solution = MyLinkedList()
        solution.addAtHead(1)
        solution.deleteAtIndex(0)
        solution.addAtTail(1)
        solution.addAtHead(2)
        XCTAssertEqual(solution.get(0), 2)
        XCTAssertEqual(solution.get(10), -1)
        solution.addAtHead(3)
        XCTAssertEqual(solution.get(2), 1)

        // 3 2 1
        solution.addAtIndex(10, 10)
        solution.addAtIndex(1, 10)
        // 3 10 2 1
        XCTAssertEqual(solution.get(1), 10)
        solution.addAtIndex(0, 10)
        // 10 3 10 2 1
        XCTAssertEqual(solution.get(0), 10)

        solution.deleteAtIndex(2)
        solution.deleteAtIndex(100)
        // 10 3 2 1
        XCTAssertEqual(solution.get(2), 2)
        solution.deleteAtIndex(0)
        // 3 2 1
        XCTAssertEqual(solution.get(2), 1)

        solution.addAtTail(10)
        // 3 2 1 10
        XCTAssertEqual(solution.get(3), 10)
        solution.addAtIndex(4, 10)
        // 3 2 1 10 10
        XCTAssertEqual(solution.get(4), 10)
        solution.deleteAtIndex(4)
    }
}
