import XCTest
@testable import LeetCode

final class FloodFillSpec: XCTestCase {

    fileprivate let questions: [(([[Int]], Int, Int, Int), [[Int]])] = [
        (([[1, 1, 1], [1, 1, 0], [1, 0, 1]], 1, 1, 2), [[2, 2, 2], [2, 2, 0], [2, 0, 1]]),
        (([[0, 0, 0], [0, 0, 0]], 0, 0, 2), [[2, 2, 2], [2, 2, 2]]),
        (([[0, 0, 0], [0, 1, 1]], 1, 1 ,1), [[0, 0, 0], [0, 1, 1]])
    ]

    func testFloodFill() {
        let solution = FloodFill()
        for ((image, sr, sc, newColor), answer) in questions {
            XCTAssertEqual(solution.floodFill(image, sr, sc, newColor), answer)
        }
    }
}
