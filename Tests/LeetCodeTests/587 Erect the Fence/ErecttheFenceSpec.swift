import XCTest
@testable import LeetCode

final class ErecttheFenceSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [[Int]])] = [
        (([[1, 1], [2, 2], [2, 0], [2, 4], [3, 3], [4, 2]]), [[1, 1], [2, 0], [4, 2], [3, 3], [2, 4]]),
        (([[1, 2], [2, 2], [4, 2]]), [[1, 2], [2, 2], [4, 2]])
    ]

    func testErecttheFence() {
        let solution = ErecttheFence()
        for ((trees), answer) in questions {
            XCTAssertEqual(solution.outerTrees(trees), answer)
        }
    }
}
