import XCTest
@testable import LeetCode

final class LargestTriangleAreaSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Double)] = [
        (([[0, 0], [0, 1], [1, 0], [0, 2], [2, 0]]), 2)
    ]

    func testLargestTriangleArea() {
        let solution = LargestTriangleArea()
        for ((points), answer) in questions {
            XCTAssertEqual(solution.largestTriangleArea(points), answer)
        }
    }
}
