import XCTest
@testable import LeetCode

final class DesignHashMapSpec: XCTestCase {

    func testDesignHashMap() {
        let solution = DesignHashMap()
        solution.put(1, 1)
        XCTAssertEqual(solution.get(1), 1)
        solution.put(2, 2)
        XCTAssertEqual(solution.get(3), -1)
        solution.put(2, 1)
        XCTAssertEqual(solution.get(2), 1)
        solution.remove(2)
        XCTAssertEqual(solution.get(2), -1)
    }
}
