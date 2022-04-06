import XCTest
@testable import LeetCode

final class MinimumHeightTreesSpec: XCTestCase {

    fileprivate let questions: [((Int, [[Int]]), [Int])] = [
        ((1, []), [0]),
        ((6, [[3, 0], [3, 1], [3, 2], [3, 4], [5, 4]]), [3, 4]),
        ((4, [[1, 0], [1, 2], [1, 3]]), [1])
    ]

    func testMinimumHeightTrees() {
        let solution = MinimumHeightTrees()
        for ((n, edges), answer) in questions {
            XCTAssertEqual(solution.findMinHeightTrees(n, edges), answer)
        }
    }
}
