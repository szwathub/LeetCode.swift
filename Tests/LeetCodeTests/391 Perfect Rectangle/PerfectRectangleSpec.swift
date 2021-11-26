import XCTest
@testable import LeetCode

final class PerfectRectangleSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Bool)] = [
        (([[1, 1, 3, 3], [3, 1, 4, 2], [3, 2, 4, 4], [1, 3, 2, 4], [2, 3, 3, 4]]), true),
        (([[1, 1, 2, 3], [1, 3, 2, 4], [3, 1, 4, 2], [3, 2, 4, 4]]), false),
        (([[1, 1, 3, 3], [3, 1, 4, 2], [1, 3, 2, 4], [3, 2, 4, 4]]), false),
        (([[1, 1, 3, 3], [3, 1, 4, 2], [1, 3, 2, 4], [2, 2, 4, 4]]), false),
        (([[0, 0, 2, 2], [1, 1, 3, 3], [2, 0, 3, 1], [0, 3, 3, 4]]), false)
    ]

    func testPerfectRectangle() {
        let solution = PerfectRectangle()
        for ((rectangles), answer) in questions {
            XCTAssertEqual(solution.isRectangleCover(rectangles), answer)
        }
    }
}
