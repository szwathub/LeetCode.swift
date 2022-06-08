import XCTest
@testable import LeetCode

final class ValidBoomerangSpec: XCTestCase {

    fileprivate let questions: [(([[Int]]), Bool)] = [
        (([[1, 1], [2, 3], [3, 2]]), true),
        (([[1, 1], [2, 2], [3, 3]]), false),
        (([[1, 1], [1, 1], [3, 3]]), false),
        (([[1, 1], [2, 2], [2, 2]]), false)
    ]

    func testValidBoomerang() {
        let solution = ValidBoomerang()
        for ((points), answer) in questions {
            XCTAssertEqual(solution.isBoomerang(points), answer)
        }
    }
}
