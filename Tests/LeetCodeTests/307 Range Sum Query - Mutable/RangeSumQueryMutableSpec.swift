import XCTest
@testable import LeetCode

final class RangeSumQueryMutableSpec: XCTestCase {

    func testRangeSumQueryMutable() {
        let solution = RangeSumQueryMutable([1, 3, 5])
        XCTAssertEqual(solution.sumRange(0, 2), 9)
        solution.update(1, 2)
        XCTAssertEqual(solution.sumRange(0, 2), 8)
    }
}
