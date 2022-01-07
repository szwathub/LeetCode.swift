import XCTest
@testable import LeetCode

final class ImplementQueueusingStacksSpec: XCTestCase {

    func testImplementQueueusingStacks() {
        let solution = ImplementQueueusingStacks()

        solution.push(1)
        solution.push(2)
        XCTAssertEqual(solution.peek(), 1)
        _ = solution.pop()
        XCTAssertFalse(solution.empty())
        XCTAssertEqual(solution.peek(), 2)
    }
}
