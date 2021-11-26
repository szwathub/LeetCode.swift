import XCTest
@testable import LeetCode

final class RangeAdditionIISpec: XCTestCase {

    fileprivate let questions: [((Int, Int, [[Int]]), Int)] = [
        ((
            3,
            3,
            [
                [2, 2], [3, 3]
            ]
        ), 4),
        ((
            3,
            3,
            [
                [2, 2], [3, 3], [3, 3], [3, 3], [2, 2], [3, 3],
                [3, 3], [3, 3], [2, 2], [3, 3], [3, 3], [3, 3]
            ]
        ), 4),

        ((
            3,
            3,
            []
        ), 9),
        ((
            18,
            3,
            [
                [16, 1], [14, 3], [14, 2], [4, 1], [10, 1], [11, 1], [8, 3],
                [16, 2], [13, 1], [8, 3], [2, 2], [9, 1], [3, 1], [2, 2], [6, 3]
            ]
        ), 2)
    ]

    func testRangeAdditionII() {
        let solution = RangeAdditionII()
        for ((m, n, ops), answer) in questions {
            XCTAssertEqual(solution.maxCount(m, n, ops), answer)
        }
    }
}
