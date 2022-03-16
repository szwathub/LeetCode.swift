import XCTest
@testable import LeetCode

final class AllOoneDataStructureSpec: XCTestCase {

    func testAllOoneDataStructure() {
        let solution = AllOne()
        XCTAssertEqual(solution.getMaxKey(), "")
        XCTAssertEqual(solution.getMinKey(), "")

        solution.inc("hello")
        solution.inc("leetcode")
        solution.inc("hello")
        XCTAssertEqual(solution.getMaxKey(), "hello")
        XCTAssertEqual(solution.getMinKey(), "leetcode")

        solution.inc("leetcode")
        solution.inc("leet")
        solution.inc("leetcode")
        solution.dec("leet")
        solution.dec("leetcode")

        solution.inc("leetcode")
        solution.inc("leetcode")
        solution.inc("leetcode")
        solution.inc("leetcode")
        solution.inc("leetcode")
        solution.inc("leetcode")
        solution.dec("leetcode")
    }
}
