import XCTest
@testable import LeetCode

final class RangeModuleSpec: XCTestCase {

    func testRangeModule() {
        let rangeModule = RangeModule()
        XCTAssertFalse(rangeModule.queryRange(13, 15))
        rangeModule.addRange(10, 11)
        rangeModule.addRange(10, 20)
        rangeModule.removeRange(14, 16)
        XCTAssertTrue(rangeModule.queryRange(10, 14))
        XCTAssertFalse(rangeModule.queryRange(13, 15))
        XCTAssertTrue(rangeModule.queryRange(16, 17))
        XCTAssertFalse(rangeModule.queryRange(14, 15))
    }
}
