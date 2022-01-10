import XCTest
@testable import LeetCode

final class Searcha2DMatrixIISpec: XCTestCase {

    fileprivate let questions: [(([[Int]], Int), Bool)] = [
        (([
            [1, 4, 7, 11, 15],
            [2, 5, 8, 12, 19],
            [3, 6, 9, 16, 22],
            [10, 13, 14, 17, 24],
            [18, 21, 23, 26, 30]
        ], 5), true),
        (([
            [1, 4, 7, 11, 15],
            [2, 5, 8, 12, 19],
            [3, 6, 9, 16, 22],
            [10, 13, 14, 17, 24],
            [18, 21, 23, 26, 30]
        ], 20), false)
    ]

    func testSearcha2DMatrixII() {
        let solution = Searcha2DMatrixII()
        for ((matrix, target), answer) in questions {
            XCTAssertEqual(solution.searchMatrix(matrix, target), answer)
        }
    }
}
