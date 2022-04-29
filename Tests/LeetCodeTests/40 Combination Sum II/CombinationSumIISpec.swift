import XCTest
@testable import LeetCode

final class CombinationSumIISpec: XCTestCase {

    fileprivate let questions: [(([Int], Int), [[Int]])] = [
        (
            ([10, 1, 2, 7, 6, 1, 5], 8),
            [
                [7, 1],
                [6, 2],
                [6, 1, 1],
                [5, 2, 1]
            ]
        ),
        (
            ([2, 5, 2, 1, 2], 5),
            [
                [5],
                [2, 2, 1]
            ]
        )
    ]

    func testCombinationSumII() {
        let solution = CombinationSumII()
        for ((candidates, target), answer) in questions {
            XCTAssertEqual(solution.combinationSum2(candidates, target), answer)
        }
    }
}
