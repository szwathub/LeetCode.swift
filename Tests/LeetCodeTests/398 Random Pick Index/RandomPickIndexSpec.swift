import XCTest
@testable import LeetCode

final class RandomPickIndexSpec: XCTestCase {

    func testRandomPickIndex() {
        let solution = RandomPickIndex([1, 2, 3, 3, 3])
        _ = solution.pick(3)
    }
}
