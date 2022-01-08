import XCTest
@testable import LeetCode

final class GrayCodeSpec: XCTestCase {

    fileprivate let questions: [((Int), [Int])] = [
        ((2), [0, 1, 3, 2]),
        ((1), [0, 1])
    ]

    func testGrayCode() {
        let solution = GrayCode()
        for ((n), answer) in questions {
            XCTAssertEqual(solution.grayCode(n), answer)
        }
    }
}
