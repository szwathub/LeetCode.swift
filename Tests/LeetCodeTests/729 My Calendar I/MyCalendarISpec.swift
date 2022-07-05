import XCTest
@testable import LeetCode

final class MyCalendarISpec: XCTestCase {

    func testMyCalendarI() {
        let solution = MyCalendarI()
        XCTAssertTrue(solution.book(10, 20))
        XCTAssertFalse(solution.book(15, 25))
        XCTAssertTrue(solution.book(20, 30))
    }
}
