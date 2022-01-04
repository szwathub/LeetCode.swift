import XCTest
@testable import LeetCode

final class Convert1DArrayInto2DArraySpec: XCTestCase {

    fileprivate let questions: [(([Int], Int, Int), [[Int]])] = [
        (([1, 2, 3, 4], 2, 2), [[1, 2], [3, 4]]),
        (([1, 2, 3], 1, 3), [[1, 2, 3]]),
        (([1, 2], 1, 1), [])
    ]

    func testConvert1DArrayInto2DArray() {
        let solution = Convert1DArrayInto2DArray()
        for ((original, m, n), answer) in questions {
            XCTAssertEqual(solution.construct2DArray(original, m, n), answer)
        }
    }
}
