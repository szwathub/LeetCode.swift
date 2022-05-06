import XCTest
@testable import LeetCode

final class NumberofRecentCallsSpec: XCTestCase {

    func testNumberofRecentCalls() {
        let solution = RecentCounter()
        XCTAssertEqual(solution.ping(1), 1)
        XCTAssertEqual(solution.ping(100), 2)
        XCTAssertEqual(solution.ping(3001), 3)
        XCTAssertEqual(solution.ping(3002), 3)
    }
}
