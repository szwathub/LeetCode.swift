import XCTest
@testable import Structure

class HeapSpec: XCTestCase {
    func testHeap() {
        var minHeap = Heap<Int>.init(sort: <)
        XCTAssertNil(minHeap.remove())
        minHeap.insert(1)
        XCTAssertEqual(minHeap.remove(), 1)

        var maxHeap = Heap<Int>.init([1, 2, 4, 5], sort: >)
        XCTAssertTrue(minHeap.isEmpty)
        XCTAssertEqual(maxHeap.count, 4)

        maxHeap.remove(at: 100)
        maxHeap.remove { $0 == 1000 }

        minHeap.insert([10, 5, 6, 1])
        maxHeap.insert(9)
        XCTAssertEqual(minHeap.peek(), 1)
        XCTAssertEqual(maxHeap.peek(), 9)

        if let index = minHeap.firstIndex(where: { $0 == 1 }) {
            XCTAssertEqual(minHeap.remove(at: index), 1)
        }
        maxHeap.remove { $0 == 9 }
        XCTAssertEqual(maxHeap.peek(), 5)
        XCTAssertEqual(maxHeap.remove(), 5)

        maxHeap.replace(11, at: 2)
        maxHeap.replace(11, at: 22)

        var heap = Heap<Int>.init([11, 5, 10, 1, 9], sort: >)
        XCTAssertEqual(heap.remove(), 11)
    }
}
