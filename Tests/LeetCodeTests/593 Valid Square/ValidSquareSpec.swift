import XCTest
@testable import LeetCode

final class ValidSquareSpec: XCTestCase {

    fileprivate let questions: [(([Int], [Int], [Int], [Int]), Bool)] = [
        (([0, 0], [1, 1], [1, 0], [0, 1]), true),
        (([0, 0], [1, 1], [1, 0], [0, 12]), false),
        (([1, 0], [-1, 0], [0, 1], [0, -1]), true),
        (([1, 0], [1, 0], [0, 1], [0, -1]), false)
    ]

    func testValidSquare() {
        let solution = ValidSquare()
        for ((p1, p2, p3, p4), answer) in questions {
            XCTAssertEqual(solution.validSquare(p1, p2, p3, p4), answer)
        }
    }
}
