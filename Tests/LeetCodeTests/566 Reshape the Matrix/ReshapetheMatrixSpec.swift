import XCTest
@testable import LeetCode

final class ReshapetheMatrixSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], Int, Int), [[Int]])] = [
        (([[1, 2], [3, 4]], 1, 4), [[1, 2, 3, 4]]),
        (([[1, 2], [3, 4]], 2, 4), [[1, 2], [3, 4]])
    ]

    func testReshapetheMatrix() {
        let solution = ReshapetheMatrix()
        for ((mat, r, c), answer) in questions {
            XCTAssertEqual(solution.matrixReshape(mat, r, c), answer)
        }
    }
}
