import XCTest
@testable import LeetCode

final class SetMatrixZeroesSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [[Int]])] = [
        (([[1, 1, 1], [1, 0, 1], [1, 1, 1]]), [[1, 0, 1], [0, 0, 0], [1, 0, 1]]),
        (([[0, 1, 2, 0], [3, 4, 5, 2], [1, 3, 1, 5]]), [[0, 0, 0, 0], [0, 4, 5, 0], [0, 3, 1, 0]])
    ]

    func testSetMatrixZeroes() {
        let solution = SetMatrixZeroes()
        for ((var matrix), answer) in questions {

            solution.setZeroes(&matrix)
            XCTAssertEqual(matrix, answer)
        }
    }
}
