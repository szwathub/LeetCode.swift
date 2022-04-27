import XCTest
@testable import LeetCode

final class PacificAtlanticWaterFlowSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [[Int]])] = [
        (
            ([
                [1, 2, 2, 3, 5],
                [3, 2, 3, 4, 4],
                [2, 4, 5, 3, 1],
                [6, 7, 1, 4, 5],
                [5, 1, 1, 2, 4]
            ]),
            [[0, 4], [1, 3], [1, 4], [2, 2], [3, 0], [3, 1], [4, 0]]
        ),
        (
            ([
                [2, 1],
                [1, 2]
            ]),
            [[0, 0], [0, 1], [1, 0], [1, 1]]
        )
    ]

    func testPacificAtlanticWaterFlow() {
        let solution = PacificAtlanticWaterFlow()
        for ((heights), answer) in questions {
            XCTAssertEqual(solution.pacificAtlantic(heights).sorted(by: { a, b in
                if a[0] == b[0] {
                    return a[1] < b[1]
                }

                return a[0] < b[0]
            }), answer)
        }
    }
}
