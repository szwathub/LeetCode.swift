import XCTest
@testable import LeetCode

final class RandomPickwithBlacklistSpec: XCTestCase {

    func testRandomPickwithBlacklist() {
        let solution = RandomPickwithBlacklist(7, [2, 3, 5])
        _ = solution.pick()
        _ = solution.pick(2)
        _ = solution.pick(1)
    }
}
