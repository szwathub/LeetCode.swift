import XCTest
@testable import LeetCode

final class ColoringABorderSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], Int, Int, Int), [[Int]])] = [
        (([[1, 1], [1, 2]], 0, 0, 3), [[3, 3], [3, 2]]),
        (([[1, 2, 2], [2, 3, 2]], 0, 1, 3), [[1, 3, 3], [2, 3, 3]]),
        (([[1, 1, 1], [1, 1, 1], [1, 1, 1]], 1, 1, 2), [[2, 2, 2], [2, 1, 2], [2, 2, 2]])
    ]

    func testColoringABorder() {
        let solution = ColoringABorder()
        for ((grid, row, col, color), answer) in questions {
            XCTAssertEqual(solution.colorBorder(grid, row, col, color), answer)
        }
    }
}
