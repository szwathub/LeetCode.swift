import XCTest
@testable import LeetCode

final class HeightCheckerSpec: XCTestCase {

    fileprivate let questions: [(([Int]), Int)] = [
        (([1, 1, 4, 2, 1, 3]), 3),
        (([5, 1, 2, 3, 4]), 5),
        (([1, 2, 3, 4, 5]), 0)
    ]

    func testHeightChecker() {
        let solution = HeightChecker()
        for ((heights), answer) in questions {
            XCTAssertEqual(solution.heightChecker(heights), answer)
        }
    }
}
