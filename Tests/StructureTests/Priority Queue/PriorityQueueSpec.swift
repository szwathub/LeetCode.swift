import XCTest
@testable import Structure

class PriorityQueueSpec: XCTestCase {

    func test() {
        var maxQueue = PriorityQueue<Int>.init(sort: >)
        var minQueue = PriorityQueue<Int>.init([1, 4, 5, 6], sort: <)
        XCTAssertTrue(maxQueue.isEmpty)
        XCTAssertEqual(minQueue.count, 4)

        maxQueue.enqueue(1)
        minQueue.enqueue(11)
        XCTAssertEqual(maxQueue.peek(), 1)
        XCTAssertEqual(minQueue.peek(), 1)

        minQueue.dequeue()
        XCTAssertEqual(minQueue.peek(), 4)
    }
}
