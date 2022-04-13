import XCTest
@testable import LeetCode

final class InsertDeleteGetRandomSpec: XCTestCase {

    func testInsertDeleteGetRandom() {
        let solution = RandomizedSet()
        XCTAssertTrue(solution.insert(1))
        XCTAssertFalse(solution.remove(2))
        XCTAssertTrue(solution.insert(2))
        _ = solution.getRandom()
        XCTAssertTrue(solution.remove(1))
        XCTAssertFalse(solution.insert(2))
        _ = solution.getRandom()
    }
}
