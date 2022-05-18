import XCTest
@testable import LeetCode

final class KthSmallestNumberinMultiplicationTableSpec: XCTestCase {

    fileprivate let questions: [((Int, Int, Int), Int)] = [
        ((3, 3, 5), 3),
        ((2, 3, 6), 6)
    ]

    func testKthSmallestNumberinMultiplicationTable() {
        let solution = KthSmallestNumberinMultiplicationTable()
        for ((m, n, k), answer) in questions {
            XCTAssertEqual(solution.findKthNumber(m, n, k), answer)
        }
    }
}
