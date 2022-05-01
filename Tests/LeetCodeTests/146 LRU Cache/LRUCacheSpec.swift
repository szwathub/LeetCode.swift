import XCTest
@testable import LeetCode

final class LRUCacheSpec: XCTestCase {

    func testLRUCache() {
        let solution = LRUCache(2)
        solution.put(1, 0)
        solution.put(2, 2)
        XCTAssertEqual(solution.get(1), 0)
        solution.put(3, 3)
        XCTAssertEqual(solution.get(2), -1)
        solution.put(4, 4)
        XCTAssertEqual(solution.get(1), -1)
        XCTAssertEqual(solution.get(3), 3)
        XCTAssertEqual(solution.get(4), 4)
        solution.put(4, 5)
        XCTAssertEqual(solution.get(4), 5)
    }
}
