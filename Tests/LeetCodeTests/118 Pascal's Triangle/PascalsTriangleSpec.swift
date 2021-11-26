import XCTest
@testable import LeetCode

final class PascalsTriangleSpec: XCTestCase {

    fileprivate let questions: [((Int), [[Int]])] = [
        ((1), [[1]]),
        ((5), [[1], [1, 1], [1, 2, 1], [1, 3, 3, 1], [1, 4, 6, 4, 1]])
    ]

    func testPascalsTriangle() {
        let solution = PascalsTriangle()
        for ((numRows), answer) in questions {
            XCTAssertEqual(solution.generate(numRows), answer)
        }
    }
}
