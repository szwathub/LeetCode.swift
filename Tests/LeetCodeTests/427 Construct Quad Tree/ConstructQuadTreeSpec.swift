import XCTest
@testable import LeetCode

final class ConstructQuadTreeSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [[Int]])] = [
        (
            ([
                [0, 1],
                [1, 0]
            ]),
            [[0, 1], [1, 0], [1, 1], [1, 1], [1, 0]]
        ),
        (
            ([
                [1, 1, 1, 1, 0, 0, 0, 0],
                [1, 1, 1, 1, 0, 0, 0, 0],
                [1, 1, 1, 1, 1, 1, 1, 1],
                [1, 1, 1, 1, 1, 1, 1, 1],
                [1, 1, 1, 1, 0, 0, 0, 0],
                [1, 1, 1, 1, 0, 0, 0, 0],
                [1, 1, 1, 1, 0, 0, 0, 0],
                [1, 1, 1, 1, 0, 0, 0, 0]
            ]),
            [[]]
        )
    ]

    func testConstructQuadTree() {
        let solution = ConstructQuadTree()
        for ((grid), _) in questions {
            _ = solution.construct(grid)
        }
    }
}
