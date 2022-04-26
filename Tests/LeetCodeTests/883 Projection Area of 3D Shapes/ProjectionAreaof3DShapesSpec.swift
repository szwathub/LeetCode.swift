import XCTest
@testable import LeetCode

final class ProjectionAreaof3DShapesSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Int)] = [
        (([[1, 2], [3, 4]]), 17),
        (([[2]]), 5),
        (([[1, 0], [0, 2]]), 8)
    ]

    func testProjectionAreaof3DShapes() {
        let solution = ProjectionAreaof3DShapes()
        for ((grid), answer) in questions {
            XCTAssertEqual(solution.projectionArea(grid), answer)
        }
    }
}
