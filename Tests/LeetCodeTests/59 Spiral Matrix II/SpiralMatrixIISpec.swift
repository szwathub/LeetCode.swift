import XCTest
@testable import LeetCode

final class SpiralMatrixIISpec: XCTestCase {

    fileprivate let questions: [((Int), [[Int]])] = [
        ((3), [[1, 2, 3], [8, 9, 4], [7, 6, 5]]),
        ((1), [[1]])
    ]

    func testSpiralMatrixII() {
        let solution = SpiralMatrixII()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.generateMatrix(n), answer)
        }
    }
}
