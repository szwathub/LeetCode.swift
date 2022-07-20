import XCTest
@testable import LeetCode

final class Shift2DGridSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], Int), [[Int]])] = [
        (
            (
                [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9]
                ],
                1
            ),
            [
                [9, 1, 2],
                [3, 4, 5],
                [6, 7, 8]
            ]
        ),
        (
            (
                [
                    [3, 8, 1, 9],
                    [19, 7, 2, 5],
                    [4, 6, 11, 10],
                    [12, 0, 21, 13]
                ],
                4
            ),
            [
                [12, 0, 21, 13],
                [3, 8, 1, 9],
                [19, 7, 2, 5],
                [4, 6, 11, 10]
            ]
        ),
        (
            (
                [
                    [1, 2, 3],
                    [4, 5, 6],
                    [7, 8, 9]
                ],
                9
            ),
            [
                [1, 2, 3],
                [4, 5, 6],
                [7, 8, 9]
            ]
        )
    ]

    func testShift2DGrid() {
        let solution = Shift2DGrid()
        for ((grid, k), answer) in questions {
            XCTAssertEqual(solution.shiftGrid(grid, k), answer)
        }
    }
}
