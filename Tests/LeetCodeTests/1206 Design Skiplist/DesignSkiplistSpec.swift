import XCTest
@testable import LeetCode
@testable import Structure

final class DesignSkiplistSpec: XCTestCase {

    func testDesignSkiplist() {
        let solution = DesignSkiplist()
        solution.add(1)
        solution.add(2)
        solution.add(3)
        XCTAssertFalse(solution.search(10))
        solution.add(4)
        XCTAssertTrue(solution.search(1))
        XCTAssertFalse(solution.erase(0))
        XCTAssertTrue(solution.erase(1))
        XCTAssertFalse(solution.search(1))
    }
}
