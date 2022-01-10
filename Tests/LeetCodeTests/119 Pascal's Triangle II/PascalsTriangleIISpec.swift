import XCTest
@testable import LeetCode

final class PascalsTriangleIISpec: XCTestCase {

    fileprivate let questions: [((Int), [Int])] = [
        ((3), [1, 3, 3, 1]),
        ((0), [1]),
        ((1), [1, 1])
    ]

    func testPascalsTriangleII() {
        let solution = PascalsTriangleII()
        for ((rowIndex), answer) in questions {
            XCTAssertEqual(solution.getRow(rowIndex), answer)
        }
    }
}
