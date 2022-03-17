import XCTest
@testable import LeetCode

final class MinimumNumberofVerticestoReachAllNodesSpec: XCTestCase {

    fileprivate let questions: [((Int, [[Int]]), [Int])] = [
        ((6, [[0, 1], [0, 2], [2, 5], [3, 4], [4, 2]]), [0, 3]),
        ((5, [[0, 1], [2, 1], [3, 1], [1, 4], [2, 4]]), [0, 2, 3])
    ]

    func testMinimumNumberofVerticestoReachAllNodes() {
        let solution = MinimumNumberofVerticestoReachAllNodes()
        for ((n, edges), answer) in questions {
            XCTAssertEqual(solution.findSmallestSetOfVertices(n, edges), answer)
        }
    }
}
