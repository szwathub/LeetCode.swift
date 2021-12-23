import XCTest
@testable import Structure

class StackSpec: XCTestCase {
    func testHeap() {
        var stack = Stack<Int>()
        XCTAssertTrue(stack.isEmpty)
        XCTAssertEqual(stack.count, 0)

        stack.push(11)
        XCTAssertEqual(stack.peek(), 11)
        XCTAssertEqual(stack.pop(), 11)
    }
}
