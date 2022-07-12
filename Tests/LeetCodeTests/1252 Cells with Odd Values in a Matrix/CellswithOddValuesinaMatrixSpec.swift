import XCTest
@testable import LeetCode

final class CellswithOddValuesinaMatrixSpec: XCTestCase {

    fileprivate let questions: [((Int, Int, [[Int]]), Int)] = [
        (
            (
                2,
                3,
                [
                    [0, 1],
                    [1, 1]
                ]
            ),
            6
        ),
        (
            (
                2,
                2,
                [
                    [1, 1],
                    [0, 0]
                ]
            ),
            0
        )
    ]

    func testCellswithOddValuesinaMatrix() {
        let solution = CellswithOddValuesinaMatrix()
        for ((m, n, indices), answer) in questions {
            XCTAssertEqual(solution.oddCells(m, n, indices), answer)
        }
    }
}
