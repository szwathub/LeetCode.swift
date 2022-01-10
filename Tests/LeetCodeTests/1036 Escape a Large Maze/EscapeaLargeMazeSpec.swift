import XCTest
@testable import LeetCode

final class EscapeaLargeMazeSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], [Int], [Int]), Bool)] = [
        (([[0, 1], [1, 0]], [0, 0], [0, 2]), false),
        (([], [0, 0], [999999, 999999]), true),
        (([[10, 9], [9, 10], [10, 11], [11, 10]], [0, 0], [10, 10]), false),
        (([[0, 3], [1, 0], [1, 1], [1, 2], [1, 3]], [0, 0], [0, 2]), true)
    ]

    func testEscapeaLargeMaze() {
        let solution = EscapeaLargeMaze()
        for ((blocked, source, target), answer) in questions {
            XCTAssertEqual(solution.isEscapePossible(blocked, source, target), answer)
        }
    }
}
