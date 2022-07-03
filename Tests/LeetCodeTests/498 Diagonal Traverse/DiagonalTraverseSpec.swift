import XCTest
@testable import LeetCode

final class DiagonalTraverseSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), [Int])] = [
        (([[1, 2, 3], [4, 5, 6], [7, 8, 9]]), [1, 2, 4, 7, 5, 3, 6, 8, 9]),
        (([[1, 2], [3, 4]]), [1, 2, 3, 4])
    ]

    func testDiagonalTraverse() {
        let solution = DiagonalTraverse()
        for ((mat), answer) in questions {
            XCTAssertEqual(solution.findDiagonalOrder(mat), answer)
        }
    }
}
